# Prerequisites

1. Ensure that Ollama is not installed on your PC.

# Dependencies

1. Python 3.11
2. Intel OneAPI Base Toolkit
3. Anaconda or Miniconda

# Installing Ollama with ipex-llm

Open **Command Prompt** as an administrator and run the following commands:

```bash
conda create -n OLLAMA python=3.11

conda activate OLLAMA

pip install --pre --upgrade ipex-llm[cpp]

git clone https://github.com/Md-Siam-Mia-Code/Ollama-On-Intel-ARC-GPU.git

cd Ollama-On-Intel-ARC-GPU

mkdir llama-cpp

cd llama-cpp

init-llama-cpp.bat

"C:\Program Files (x86)\Intel\oneAPI\setvars.bat"

set OLLAMA_NUM_GPU=999

set no_proxy=localhost,127.0.0.1

set ZES_ENABLE_SYSMAN=1

set SYCL_CACHE_PERSISTENT=1

set OLLAMA_KEEP_ALIVE=-1

set SYCL_CACHE_PERSISTENT=1

rem under most circumstances, the following environment variable may improve performance, but sometimes this may also cause performance degradation
set SYCL_PI_LEVEL_ZERO_USE_IMMEDIATE_COMMANDLISTS=1

set ONEAPI_DEVICE_SELECTOR=level_zero:[0]

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

# Edit Ollama.bat
Edit Ollama.bat line No. 6
```bash
rem Change directory to llama-cpp
cd /D path/to/your/Ollama-On-Intel-ARC-GPU/llama-cpp
```

 # After completing the steps run Ollama.bat and OpenWebUI.bat as an administrator(Close Previous Windows)
 # Then go to http://localhost:8080/
