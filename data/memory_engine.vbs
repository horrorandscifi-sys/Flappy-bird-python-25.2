' Модуль управления памятью DATA_CORE
Set fs = CreateObject("Scripting.FileSystemObject")
dbFile = "data\memory.db"

Set args = WScript.Arguments
action = args(0) ' "save" или "read"

If action = "save" Then
    value = args(1)
    Set f = fs.CreateTextFile(dbFile, True)
    f.WriteLine(value)
    f.Close
    WScript.Echo "SAVED"
ElseIf action = "read" Then
    If fs.FileExists(dbFile) Then
        Set f = fs.OpenTextFile(dbFile, 1)
        WScript.Echo f.ReadLine
        f.Close
    Else
        WScript.Echo "0"
    End If
End If
