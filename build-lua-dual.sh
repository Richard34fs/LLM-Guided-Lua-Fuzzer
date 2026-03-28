#!/bin/bash
set -e

LUA_VERSION="5.4.8"
LUA_DIR="lua-${LUA_VERSION}"
LUA_TARBALL="lua-${LUA_VERSION}.tar.gz"
LUA_URL="https://www.lua.org/ftp/${LUA_TARBALL}"

# Cores
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}=== Setup Lua 5.4.8 (GCOV + Sanitizers) ===${NC}"

# 1. Download
if [ ! -f "$LUA_TARBALL" ]; then
    echo -e "${YELLOW}Baixando Lua ${LUA_VERSION}...${NC}"
    wget "$LUA_URL" || curl -O "$LUA_URL"
fi

# 2. Build de Cobertura (GCOV)
echo -e "${GREEN}Compilando versão de Cobertura (GCOV)...${NC}"
if [ -d "${LUA_DIR}-coverage" ]; then rm -rf "${LUA_DIR}-coverage"; fi
tar xzf "$LUA_TARBALL"
mv "$LUA_DIR" "${LUA_DIR}-coverage"
cd "${LUA_DIR}-coverage"

# Flags vitais: --coverage habilita a instrumentação do GCC
make clean 2>/dev/null || true
make linux MYCFLAGS="-O0 -g --coverage" MYLDFLAGS="--coverage"

mkdir -p ../lua-coverage-install
make install INSTALL_TOP="$(pwd)/../lua-coverage-install"
cd ..
echo -e "${GREEN}✓ Build GCOV pronto${NC}"

# 3. Build Sanitizado (ASan/UBSan)
echo -e "${GREEN}Compilando versão Sanitizada (Bug Hunter)...${NC}"
if [ -d "${LUA_DIR}-sanitized" ]; then rm -rf "${LUA_DIR}-sanitized"; fi
tar xzf "$LUA_TARBALL"
mv "$LUA_DIR" "${LUA_DIR}-sanitized"
cd "${LUA_DIR}-sanitized"

# Flags para detectar bugs de memória e comportamento indefinido
ASAN_FLAGS="-fsanitize=address -fsanitize-address-use-after-scope"
UBSAN_FLAGS="-fsanitize=undefined -fsanitize=float-divide-by-zero"
DEBUG_FLAGS="-g -O3 -fno-omit-frame-pointer -fno-optimize-sibling-calls"
COMMON_FLAGS="$ASAN_FLAGS $UBSAN_FLAGS $DEBUG_FLAGS"

make clean 2>/dev/null || true
# Tenta usar clang se disponível, senão gcc
if command -v clang &> /dev/null; then
    COMPILER="clang"
else
    COMPILER="gcc"
fi
echo "   Usando compilador: $COMPILER"

make linux CC=$COMPILER MYCFLAGS="$COMMON_FLAGS" MYLDFLAGS="$COMMON_FLAGS" MYLIBS="-ldl -lm"

mkdir -p ../lua-sanitized-install
make install INSTALL_TOP="$(pwd)/../lua-sanitized-install"
cd ..
echo -e "${GREEN}✓ Build Sanitizado pronto${NC}"

# 4. Gerar Wrappers
echo "Gerando scripts de execução..."

cat > run-lua-coverage.sh << 'EOF'
#!/bin/bash
# Executa Lua e gera dados de cobertura (.gcda) em lua-5.4.8-coverage/src
export LUA_PATH="./lua-coverage-install/share/lua/5.4/?.lua;;"
export LUA_CPATH="./lua-coverage-install/lib/lua/5.4/?.so;;"
exec ./lua-coverage-install/bin/lua "$@"
EOF
chmod +x run-lua-coverage.sh

cat > run-lua-sanitized.sh << 'EOF'
#!/bin/bash
# Executa Lua com monitoramento de memória
export ASAN_OPTIONS="detect_leaks=1:halt_on_error=0:abort_on_error=0:print_summary=1"
export UBSAN_OPTIONS="print_stacktrace=1:halt_on_error=0:abort_on_error=0"
export LUA_PATH="./lua-sanitized-install/share/lua/5.4/?.lua;;"
export LUA_CPATH="./lua-sanitized-install/lib/lua/5.4/?.so;;"
exec ./lua-sanitized-install/bin/lua "$@"
EOF
chmod +x run-lua-sanitized.sh

echo -e "${GREEN}=== Instalação Completa ===${NC}"
echo "Use ./run-lua-coverage.sh para gerar cobertura"
echo "Use ./run-lua-sanitized.sh para achar bugs"
