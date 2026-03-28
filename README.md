# LLM-Guided Lua Fuzzer

## Resumo
Este projeto é um fuzzer guiado por Inteligência Artificial (LLMs) focado em encontrar bugs no interpretador C do Lua. Ele utiliza o Ollama para gerar e mutar código Lua (seeds) e os testa em duas builds customizadas do interpretador: uma instrumentada para medir cobertura de código (GCOV) e outra com sanitizadores de memória (ASan/UBSan) para detectar vulnerabilidades.

## Pré-requisitos (Configuração)
O ambiente requer **Linux** devido às ferramentas de compilação e instrumentação.

* **SO**: Linux (Ubuntu/Debian recomendado)
* **Compilação**: `gcc`, `gcov`, `make`
* **Python**: Python 3.8+ e módulo `venv`
* **LLM**: [Ollama](https://ollama.com/) instalado

## Como Iniciar

**1. Preparar o ambiente Python**
Crie e ative um ambiente virtual, depois instale as dependências:
```bash
python3 -m venv venv
source venv/bin/activate
pip install ollama matplotlib
```

**2. Preparar o Ollama**
Certifique-se de que o daemon do Ollama está rodando e baixe o modelo utilizado:
```bash
ollama pull starcoder2:instruct
```

**3. Compilar o Lua (Dual Build)**
Dê permissão de execução para todos os scripts bash e rode o script de compilação. Isso criará as pastas `lua-coverage-install` e `lua-sanitized-install`:
```bash
chmod +x *.sh
./build-lua-dual.sh
```

**4. Gerar Seeds Iniciais**
Antes de iniciar o fuzzer, gere a população inicial de scripts Lua:
```bash
python generator.py
```
*(Certifique-se de ter baixado e extraído a test suite do Lua 5.4.8 conforme indicado no final do `generator.py`, caso queira gerar com base nela).*

**5. Iniciar o Fuzzer**
Utilize o script `./fuzzer.sh` para controlar e executar a campanha. Comandos disponíveis:

- `./fuzzer.sh check`: Verifica se todas as dependências necessárias estão instaladas corretamente.
- `./fuzzer.sh setup`: Faz a configuração inicial. Cria as pastas necessárias e executa o script de compilação do Lua
- `./fuzzer.sh run 60`: Roda o fuzzer por 60 minutos.
- `./fuzzer.sh clean`: Limpa fila e relatórios anteriores.

## Resultados
Ao final da execução:
* `fuzzing_report.json`: Estatísticas gerais da campanha.
* `detailed_bugs_report.txt`: Lista de arquivos que causaram crashes.
* `bug_reports/`: Detalhes técnicos e logs para cada bug encontrado.
