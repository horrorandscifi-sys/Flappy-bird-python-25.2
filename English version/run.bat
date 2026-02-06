@echo off
setlocal enabledelayedexpansion
title English version / KERNEL
color 0a

:: Теперь пути учитывают, что мы находимся внутри папки
call "auth ∕/English version ∕ security.dll.bat"

:main
cls
echo  ___________________________________________
echo ^|  TERMINAL CALC v4.0 (English version /) ^|
echo ^|  Commands: save [n], load, backup, exit   ^|
echo ^|___________________________________________^|
echo.
set /p input="USER@KERNEL_OS# "

if "%input%"=="exit" exit

if "%input%"=="load" (
    for /f "delims=" %%a in ('cscript //nologo "data ∕/English version ∕ memory_engine.vbs" read') do set mem=%%a
    echo [MEMORY] Stack Value: !mem!
    pause & goto main
)

set cmd_check=%input:~0,4%
if "%cmd_check%"=="save" (
    set val_to_save=%input:~5%
    cscript //nologo "data ∕/English version ∕ memory_engine.vbs" save !val_to_save!
    echo [SYSTEM] Written to memory.db
    pause & goto main
)

echo [PROCESSING...]
for /f "delims=" %%a in ('cscript //nologo "bin ∕/English version ∕ advanced_math.vbs" "%input%"') do set res=%%a

echo [RESULT] --^> !res!
pause
goto main
