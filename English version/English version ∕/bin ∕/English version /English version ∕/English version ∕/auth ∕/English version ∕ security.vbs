' English version / Security Check
Set objStdIn = WScript.StdIn
WScript.StdOut.Write "[SECURITY] Enter Access Key: "
pass = objStdIn.ReadLine
If pass = "1337" Then
    WScript.Quit(0)
Else
    WScript.Echo "ACCESS DENIED!"
    WScript.Sleep 2000
    WScript.Quit(1)
End If
