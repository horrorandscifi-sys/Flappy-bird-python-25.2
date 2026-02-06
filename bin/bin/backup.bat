@echo off
if not exist "backups" mkdir backups
set filename=backups\log_backup_%date%.txt
copy logs\session.log "%filename%" /y
echo [SYSTEM] Бэкап создан: %filename%
