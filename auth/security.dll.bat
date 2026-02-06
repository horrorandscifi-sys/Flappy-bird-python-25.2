@echo off
echo [SECURITY] Введите код доступа к ядру (pass: 1337)
set /p pass="PASSWORD: "
if not "%pass%"=="1337" (
    echo ACCESS DENIED.
    timeout /t 3
    exit
)
echo ACCESS GRANTED. LOADING CONFIG...
timeout /t 1 >nul
