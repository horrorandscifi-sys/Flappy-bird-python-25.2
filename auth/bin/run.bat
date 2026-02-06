@echo off
setlocal enabledelayedexpansion
title KERNEL_CALC_SUPREME_V4.0
color 0a

:init
echo [CHECK] Загрузка компонентов...
call bin\backup.bat > nul
timeout /t 1 >nul

:main
cls
echo  ___________________________________________
echo ^|  TERMINAL CALC v4.0 (Enterprise Edition) ^|
echo ^|  Commands: save [n], load, backup, exit   ^|
echo ^|___________________________________________^|
echo.
set /p input="USER@SYSTEM# "

if "%input%"=="exit" exit
if "%input%"=="backup" ( call bin\backup.bat & pause & goto main )
if "%input%"=="load" (
    for /f "delims=" %%a in ('cscript //nologo data\memory_engine.vbs read') do set mem=%%a
    echo [MEMORY] Значение в стеке: !mem!
    pause & goto main
)

:: Проверка на команду SAVE
set cmd_check=%input:~0,4%
if "%cmd_check%"=="save" (
    set val_to_save=%input:~5%
    cscript //nologo data\memory_engine.vbs save !val_to_save!
    echo [SYSTEM] Записано в DATA\MEMORY.DB
    pause & goto main
)

:: Обычное вычисление
echo [COMPUTING...]
for /f "delims=" %%a in ('cscript //nologo bin\advanced_math.vbs "%input%"') do set res=%%a

echo [RESULT] --^> %res%
echo %date% %time% : %input% = %res% >> logs\session.log
pause
goto main
