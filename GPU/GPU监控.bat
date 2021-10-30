@echo off
color 07

mode con cols=90 lines=4
:start
nvidia-smi|find "Default"
timeout /t 2 /nobreak > nul
cls
goto start
