@echo off
setlocal enabledelayedexpansion
title KERNEL_CALC_PRO_X64
color 0b

:: Анимация загрузки
echo [SYSTEM STARTUP]
set "bar=####################"
for /l %%i in (1,1,20) do (
    cls
    echo Loading: [!bar:~0,%%i!] %%i0%%
    timeout /t 0 /nobreak >nul
)

:: Вызов диагностики
echo [SYSTEM INFO]
cscript //nologo bin\diagnostic.vbs
echo ---------------------------------------

:: Проверка лицензии
if not exist "config\license.key" (
    echo [ERROR] LICENSE NOT FOUND! 
    echo Creating trial...
    echo %RANDOM%-%RANDOM%-%RANDOM% > config\license.key
    timeout /t 2
)

:main
echo.
set /p exp="CALC_CORE# "
if "%exp%"=="exit" exit

:: Считаем
for /f "delims=" %%a in ('cscript //nologo bin\engine.vbs "%exp%"') do set res=%%a

:: Имитация «думания»
echo [PROCESS] Calculating...
timeout /t 1 >nul
echo [RESULT] %exp% = %res%
echo %DATE% %TIME% | %exp% = %res% >> logs\session.log
goto main
