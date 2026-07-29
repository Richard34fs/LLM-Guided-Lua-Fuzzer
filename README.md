# LLM-Guided Semantic Mutation for Lua Interpreter Fuzzing

This repository contains the software artifact accompanying the paper **"LLM-Guided Semantic Mutation for Lua Interpreter Fuzzing: A Coverage-Driven Approach"**, accepted at the **30th Brazilian Symposium on Programming Languages (SBLP 2026)**.

The artifact implements a prototype Lua fuzzer that leverages Large Language Models (LLMs) to generate semantically meaningful mutations. The fuzzing process is organized around a seed queue and orchestrates code generation (`generator.py`), execution (`executor.py`), and coverage analysis (`coverage_manager.py`) in a continuous feedback loop.

**Paper:** ___________

---

# System Requirements

The artifact was developed and evaluated on Linux. The table below distinguishes the minimum requirements from the hardware/software used in the experiments reported in the paper.

| Component | Minimum Requirement | Used in the Paper |
|-----------|---------------------|-------------------|
| Operating System | Linux (Ubuntu/Debian recommended) | Ubuntu 24.04 |
| CPU | Modern 64-bit processor | Intel Xeon W-1370P @ 3.60 GHz |
| Memory | 16 GB RAM recommended | 32 GB RAM |
| GPU | Dedicated (recommended for faster LLM inference) | NVIDIA GeForce RTX 3060 |
| Python | Python 3.8+ | Python 3.x |
| Build Tools | `gcc`, `clang`, `gcov`, `make` | GCC + Clang |
| LLM Runtime | Ollama | Ollama |
| LLM Model | `starcoder2:instruct` (15B)* | `starcoder2:instruct` (15B) |
| Lua Source | Lua 5.4.8 | Lua 5.4.8 |

> **Note:** The GPU is **not mandatory**. The artifact can run on CPU, although LLM inference will be considerably slower.

---

# Installation

Clone the repository:

```bash
git clone <REPOSITORY_URL>
cd llm-guided-lua-fuzzer
```

## 1. Create a Python Environment

```bash
python3 -m venv venv
source venv/bin/activate

pip install ollama matplotlib
```

## 2. Install and Configure Ollama

Make sure the Ollama service is running and download the model used in our experiments.

```bash
ollama pull starcoder2:instruct
```

## 3. Build the Instrumented Lua Interpreters

Grant execution permission to the shell scripts and run the build script.

```bash
chmod +x *.sh
./build-lua-dual.sh
```

This command generates two instrumented Lua builds:

- `lua-coverage-install/` (GCOV instrumentation)
- `lua-sanitized-install/` (ASan + UBSan instrumentation)

## 4. Generate the Initial Seed Corpus

```bash
python generator.py
```

> If you want to generate seeds from the official Lua test suite, download and extract the Lua 5.4.8 test suite as described at the end of `generator.py`.

---

# Running the Fuzzer

The artifact is controlled through the helper script:

```bash
./fuzzer.sh
```

Available commands:

| Command | Description |
|----------|-------------|
| `./fuzzer.sh check` | Verify all dependencies. |
| `./fuzzer.sh setup` | Create required directories and build Lua. |
| `./fuzzer.sh run <minutes>` | Execute a fuzzing campaign. |
| `./fuzzer.sh clean` | Remove previous queues, reports and temporary files. |

Example:

```bash
./fuzzer.sh run 60
```

---

# Output Files

At the end of a campaign, the following files are generated:

| File | Description |
|------|-------------|
| `fuzzing_report.json` | Overall fuzzing statistics. |
| `detailed_bugs_report.txt` | Summary of crashing inputs. |
| `bug_reports/` | Individual reports and logs for each discovered bug. |

---

# Repository Structure

├─ bug_reports/           # Crash reports
├─ build-lua-dual.sh      # Builds the two instrumented Lua interpreters (ASan/UBSan and GCOV)
├─ coverage_manager.py    # Coverage analysis
├─ executor.py            # Test case execution
├─ fuzzer.sh              # Main execution script
├─ generator.py           # LLM-based seed generation
├─ llm.py                 # LLM API communication interface
├─ main.py                # Fuzzing loop orchestrator
├─ prompt.txt             # System and mutation prompts
├─ queue_manager.py       # Seed queue management
├─ test-builds.sh         # Validates the compiled Lua binaries
├─ LICENSE                # Open-source license (MIT)
└─ README.md              # Artifact documentation (this file)
