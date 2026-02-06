@echo off
title PROJECT_COMPILER_V1
color 0e
echo [PREPARING] Создание манифеста для упаковки в EXE...
echo [DIR] Проверка структуры папок...
timeout /t 1 >nul

:: Создаем файл инструкций для IExpress
echo [Version]>config.sed
echo Class=IEXPRESS>>config.sed
echo SEDVersion=3>>config.sed
echo [Options]>>config.sed
echo PackagePurpose=InstallFreeLib>>config.sed
echo ShowInstallProgramWindow=1>>config.sed
echo HideExtractAnimation=1>>config.sed
echo UseLongFileName=1>>config.sed
echo InsideCompressed=0>>config.sed
echo CAB_FixedSize=0>>config.sed
echo CAB_ResvCodeSigning=0>>config.sed
echo RebootMode=N>>config.sed
echo InstallPrompt=>>config.sed
echo DisplayLicense=>>config.sed
echo FinishMessage=>>config.sed
echo TargetName=%CD%\Calculator_Pro.exe>>config.sed
echo FriendlyName=SuperCalc Terminal>>config.sed
echo AppLaunched=cmd /c run.bat>>config.sed
echo PostInstallCmd=^<None^>>>config.sed
echo AdminQuietInstCmd=>>config.sed
echo UserQuietInstCmd=>>config.sed
echo [SourceFiles]>>config.sed
echo SourceFiles0=%CD%\>>config.sed
echo [SourceFiles0]>>config.sed
echo %CD%\run.bat=>>config.sed

echo [SUCCESS] Инструкции созданы. 
echo [INFO] Теперь нажми Win+R, введи iexpress и выбери этот файл (config.sed).
pause
