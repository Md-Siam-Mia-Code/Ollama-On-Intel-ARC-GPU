# Ollama Installation Guide

This guide outlines the necessary steps to install and configure **Ollama** with **ipex-llm** and **Open WebUI** on your system.

## Prerequisites

1. **Ensure that Ollama is not already installed** on your system.

## Dependencies

Make sure you have the following dependencies installed:

1. **Python 3.11**
2. **Intel OneAPI Base Toolkit** (v2024.2.1)
3. **Anaconda** or **Miniconda**

## Installing Ollama with ipex-llm

Follow these steps to install **Ollama** with the **ipex-llm** library:

1. **Open Command Prompt as Administrator** and run the following commands:

    ```bash
    conda create -n OLLAMA python=3.11 -y
    conda activate OLLAMA
    pip install --pre --upgrade ipex-llm[cpp]
    ```

2. **Clone the Ollama repository**:

    ```bash
    git clone https://github.com/Md-Siam-Mia-Code/OLLAMA.git
    cd OLLAMA
    ```

3. **Create and navigate to the `llama-cpp` directory**:

    ```bash
    mkdir llama-cpp
    cd llama-cpp
    ```

4. **Initialize the Llama CPP and Ollama**:

    ```bash
    init-llama-cpp.bat
    init-ollama.bat
    ```

5. **Set environment variables for Intel OneAPI**:

    ```bash
    "C:\Program Files (x86)\Intel\oneAPI\setvars.bat"
    ```

    Then, set the following environment variables:

    ```bash
    set OLLAMA_NUM_GPU=999
    set no_proxy=localhost,127.0.0.1
    set ZES_ENABLE_SYSMAN=1
    set SYCL_CACHE_PERSISTENT=1
    set OLLAMA_KEEP_ALIVE=-1
    set SYCL_PI_LEVEL_ZERO_USE_IMMEDIATE_COMMANDLISTS=1
    set ONEAPI_DEVICE_SELECTOR=level_zero:[0]
    ```

6. **Start Ollama server**:

    ```bash
    ollama serve
    ```

    **Important**: Keep the window open where Ollama is running.

## Installing Open WebUI

1. **Activate the `OLLAMA` environment** and install Open WebUI:

    ```bash
    conda activate OLLAMA
    pip install open-webui
    ```

2. **Start the Open WebUI server**:

    ```bash
    open-webui serve
    ```

## Configuring Ollama.bat

Edit `Ollama.bat` file:

1. Open `Ollama.bat` and modify line 6 to reflect the correct path for your system:

    ```bash
    rem Change directory to llama-cpp
    cd /D path/to/your/OLLAMA/llama-cpp
    ```

## Running the Application

1. **Run `Ollama.bat` and `OpenWebUI.bat` as Administrator** (close previous windows if open).

2. **Access the application** by navigating to [http://localhost:8080/](http://localhost:8080/) in your web browser.

---

By following these steps, you should have Ollama and Open WebUI set up and ready to use on your system.
