#!/bin/bash
set -e

echo "=== Testando Builds ==="

# 1. Testar Coverage
echo "[*] Rodando Lua Coverage..."
# Limpa dados anteriores
rm -f lua-5.4.8-coverage/src/*.gcda
./run-lua-coverage.sh -e "print('Teste Coverage: ' .. _VERSION)"

# Verifica se gerou dados do GCOV
if ls lua-5.4.8-coverage/src/*.gcda 1> /dev/null 2>&1; then
    echo "[✓] Sucesso: Arquivos .gcda gerados na pasta src!"
else
    echo "[✗] Falha: Arquivos .gcda NÃO foram gerados."
    echo "    Verifique se o build-lua-dual.sh rodou sem erros."
    exit 1
fi

echo ""

# 2. Testar Sanitizer
echo "[*] Rodando Lua Sanitized..."
./run-lua-sanitized.sh -e "print('Teste Sanitizer: ' .. _VERSION)"

echo ""
echo "[✓] Tudo parece correto. Pode iniciar o fuzzer!"
