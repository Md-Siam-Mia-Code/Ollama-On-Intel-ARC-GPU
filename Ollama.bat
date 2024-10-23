@echo off
rem Activate the virtual environment
call C:\Windows\System32\ollama\Scripts\activate.bat

rem Change directory to llama-cpp
cd llama-cpp

rem Initialize Ollama
call init-ollama.bat

rem Set up Intel oneAPI environment variables
call "C:\Program Files (x86)\Intel\oneAPI\setvars.bat" --force

rem Set environment variables
set OLLAMA_NUM_GPU=999
set no_proxy=localhost,127.0.0.1
set ZES_ENABLE_SYSMAN=1
set SYCL_CACHE_PERSISTENT=1

rem Start the Ollama server
ollama serve