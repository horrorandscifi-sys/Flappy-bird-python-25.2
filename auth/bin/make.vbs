Set shell = CreateObject("WScript.Shell")
WScript.Echo "Starting Compilation Process..."
WScript.Sleep 2000
WScript.Echo "Linking Libraries..."
WScript.Sleep 1000
' Запуск IExpress (встроен в Windows)
shell.Run "iexpress.exe", 1, True
