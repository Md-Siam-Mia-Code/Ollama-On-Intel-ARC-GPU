# Prerequisites

1. Ensure that Ollama is not installed on your PC.

# Dependencies

1. Python 3.11
2. Intel OneAPI Base Toolkit
3. Anaconda or Miniconda

# Installing Ollama with ipex-llm

Open **Command Prompt** as an administrator and run the following commands:

```bash
conda create -n OLLAMA

conda activate OLLAMA

pip install --pre --upgrade ipex-llm[cpp]

mkdir llama-cpp

cd llama-cpp

init-ollama.bat

"C:\Program Files (x86)\Intel\oneAPI\setvars.bat"

set OLLAMA_NUM_GPU=999

set no_proxy=localhost,127.0.0.1

set ZES_ENABLE_SYSMAN=1

set SYCL_CACHE_PERSISTENT=1

set OLLAMA_KEEP_ALIVE=-1

ollama serve

```
# Keep this window open.

 # Installing Open WebUI
 Open cmd as administrator and paste this commands:
```bash
conda activate OLLAMA

pip install open-webui

open-webui serve

```

 # After completing the steps run Ollama.bat and OpenWebUI.bat as an administrator(Close Previous Windows)
 # Then go to http://localhost:8080/
