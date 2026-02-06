@echo off
setlocal enabledelayedexpansion
title CALC_OS_TERMINAL_V3.0
color 0b

:: Загрузка конфигурации
call auth\security.dll.bat

:main
cls
echo [SYSTEM] Инициализация модулей...
timeout /t 1 >nul
echo [SYSTEM] Проверка ядра ENGINE.VBS... OK
echo [SYSTEM] Статус: READY
echo ---------------------------------------
echo Введите 'history' для логов или 'exit'
echo ---------------------------------------

set /p user_input="CALC_USER@KERNEL:> "

if "%user_input%"=="exit" exit
if "%user_input%"=="history" (
    type logs\session.log
    pause
    goto main
)

:: Запись в лог
echo [%DATE% %TIME%] Запрос: %user_input% >> logs\session.log

:: Вызов ядра
echo Ожидание ответа от ENGINE...
for /f "delims=" %%a in ('cscript //nologo bin\engine.vbs "%user_input%"') do set res=%%a

echo [RESULT]: !res!
echo [%DATE% %TIME%] Ответ: !res! >> logs\session.log
echo ---------------------------------------
pause
goto main
