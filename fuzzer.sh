#!/bin/bash
# fuzzer.sh - Helper script para gerenciar o Lua LLM Fuzzer (Arquitetura GCOV)

set -e

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_header() {
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}================================${NC}"
}

print_success() { echo -e "${GREEN}[✓]${NC} $1"; }
print_error() { echo -e "${RED}[✗]${NC} $1"; }
print_warning() { echo -e "${YELLOW}[!]${NC} $1"; }
print_info() { echo -e "${BLUE}[i]${NC} $1"; }

check_dependencies() {
    print_header "Verificando Dependências"
    
    local all_good=true
    
    # Check Python
    if command -v python3 &> /dev/null; then
        print_success "Python3: $(python3 --version)"
    else
        print_error "Python3 não encontrado"
        all_good=false
    fi

    # Check GCOV (Novo requisito para cobertura binária)
    if command -v gcov &> /dev/null; then
        print_success "GCOV: Instalado ($(gcov --version | head -n 1))"
    else
        print_error "GCOV não encontrado (instale gcc)"
        all_good=false
    fi
    
    # Check Ollama
    if command -v ollama &> /dev/null; then
        print_success "Ollama: Instalado"
        if ollama list | grep -q starcoder2; then
            print_success "Modelo starcoder2:instruct: Disponível"
        else
            print_warning "Modelo starcoder2:instruct não encontrado. Use: ollama pull starcoder2:instruct"
        fi
    else
        print_error "Ollama não encontrado"
        all_good=false
    fi
    
    # Check Lua Builds
    if [ -f "./lua-coverage-install/bin/lua" ]; then
        print_success "Lua (Coverage/GCOV): Instalado"
    else
        print_warning "Lua Coverage não encontrado. Execute ./fuzzer.sh setup"
        all_good=false
    fi
    
    if [ -f "./lua-sanitized-install/bin/lua" ]; then
        print_success "Lua (Sanitized): Instalado"
    else
        print_warning "Lua Sanitized não encontrado. Execute ./fuzzer.sh setup"
        all_good=false
    fi

    # Check Seed Pool
    if [ -d "./seed_pool" ] && [ "$(ls -A ./seed_pool/*.lua 2>/dev/null)" ]; then
         local seed_count=$(ls -1 ./seed_pool/*.lua 2>/dev/null | wc -l)
         print_success "Seed pool: ${seed_count} seeds encontrados"
    else
         print_warning "Seed pool vazio ou inexistente. Você precisará adicionar seeds (.lua) na pasta seed_pool/"
    fi
    
    if [ "$all_good" = false ]; then
        print_error "Algumas dependências estão faltando"
        return 1
    else
        print_success "Todas as dependências OK!"
        return 0
    fi
}

setup() {
    print_header "Configuração Inicial"
    
    # Create directories
    mkdir -p seed_pool seed_pool/bugs seed_pool/interesting bug_reports
    print_success "Diretórios criados"
    
    # Build Lua
    if [ -f "./build-lua-dual.sh" ]; then
        chmod +x build-lua-dual.sh
        ./build-lua-dual.sh
    else
        print_error "Script build-lua-dual.sh não encontrado"
        exit 1
    fi
    
    # Check Ollama model
    if command -v ollama &> /dev/null; then
        if ! ollama list | grep -q starcoder2; then
            print_info "Baixando modelo starcoder2:instruct..."
            ollama pull starcoder2:instruct
        fi
    fi
    
    print_success "Setup completo! (Lembre-se de adicionar seus seeds em seed_pool/)"
}

start_fuzzing() {
    local duration=${1:-60}
    local quiet=${2:-false}
    
    print_header "Iniciando Fuzzing"
    print_info "Duração: ${duration} minutos"
    
    if [ "$quiet" = true ]; then
        python3 main.py -t "$duration" -q
    else
        python3 main.py -t "$duration"
    fi
}

view_report() {
    if [ ! -f "fuzzing_report.json" ]; then
        print_error "Relatório não encontrado. Execute o fuzzing primeiro."
        exit 1
    fi
    
    print_header "Relatório de Fuzzing"
    
    if command -v jq &> /dev/null; then
        echo -e "\n${YELLOW}Campanha:${NC}"
        jq '.fuzzing_campaign' fuzzing_report.json
        
        echo -e "\n${YELLOW}Estatísticas de Execução:${NC}"
        jq '.execution_stats' fuzzing_report.json
        
        echo -e "\n${YELLOW}Status da Fila:${NC}"
        jq '.queue_stats' fuzzing_report.json
    else
        cat fuzzing_report.json
        print_warning "Instale 'jq' para formatação melhor."
    fi
}

list_bugs() {
    print_header "Bugs Encontrados"
    
    if [ ! -d "seed_pool/bugs" ] || [ -z "$(ls -A seed_pool/bugs/*.lua 2>/dev/null)" ]; then
        print_warning "Nenhum bug encontrado ainda"
        exit 0
    fi
    
    local bug_count=$(ls -1 seed_pool/bugs/*.lua 2>/dev/null | wc -l)
    print_info "Total de bugs: ${bug_count}"
    ls -lht seed_pool/bugs/*.lua | head -20
}

reproduce_bug() {
    local bug_file=$1
    
    if [ -z "$bug_file" ]; then
        print_error "Uso: $0 reproduce <bug_file>"
        exit 1
    fi
    
    if [ ! -f "$bug_file" ]; then
        print_error "Arquivo não encontrado: $bug_file"
        exit 1
    fi
    
    print_header "Reproduzindo Bug"
    print_info "Arquivo: $bug_file"
    
    if [ -f "./run-lua-sanitized.sh" ]; then
        ./run-lua-sanitized.sh "$bug_file"
    else
        print_error "Wrapper ./run-lua-sanitized.sh não encontrado. Execute setup."
    fi
}

clean() {
    print_header "Limpeza"
    read -p "Limpar todos os resultados (bugs, reports)? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf seed_pool/bugs/* seed_pool/interesting/*
        rm -f fuzzing_report.json queue_state.json
        rm -rf bug_reports/*
        # Opcional: Limpar dados de coverage antigos do GCOV
        if [ -d "lua-5.4.8-coverage/src" ]; then
            rm -f lua-5.4.8-coverage/src/*.gcda
        fi
        print_success "Resultados limpos"
    fi
}

show_help() {
    cat << EOF
${BLUE}Lua LLM Fuzzer (GCOV)${NC}

${YELLOW}Uso:${NC}
  $0 <comando> [opções]

${YELLOW}Comandos:${NC}
  ${GREEN}check${NC}              Verificar dependências
  ${GREEN}setup${NC}              Configuração inicial (Build + Dirs)
  ${GREEN}fuzz${NC} [minutos]     Iniciar fuzzing
  ${GREEN}report${NC}             Ver último relatório
  ${GREEN}bugs${NC}               Listar bugs
  ${GREEN}reproduce${NC} <file>   Reproduzir bug com sanitizers
  ${GREEN}clean${NC}              Limpar resultados
  ${GREEN}help${NC}               Mostrar esta ajuda

EOF
}

case "${1:-help}" in
    check) check_dependencies ;;
    setup) setup ;;
    fuzz) start_fuzzing "${2:-60}" false ;;
    fuzz-quiet) start_fuzzing "${2:-60}" true ;;
    report) view_report ;;
    bugs) list_bugs ;;
    reproduce) reproduce_bug "$2" ;;
    clean) clean ;;
    help|--help|-h) show_help ;;
    *) print_error "Comando inválido"; show_help; exit 1 ;;
esac
