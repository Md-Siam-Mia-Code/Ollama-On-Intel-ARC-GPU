@echo off
rem Activate the virtual environment
call "C:\ProgramData\miniconda3\Scripts\activate.bat" OLLAMA

rem Start the open-webui server
open-webui serve
