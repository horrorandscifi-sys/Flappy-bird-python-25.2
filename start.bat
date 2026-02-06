@echo off
color 0a
title CALCULATOR OS V1.0
:menu
cls
echo ====================================
echo   TERMINAL CALCULATOR SYSTEM 
echo ====================================
echo.
set /p exp="ENTER OPERATION (or 'exit'): "
if "%exp%"=="exit" exit

echo [INFO] Processing via VBS_CORE...
cscript //nologo logic.vbs "%exp%"
echo.
pause
goto menu
