Set args = WScript.Arguments
If args.Count = 0 Then WScript.Quit
On Error Resume Next
result = Eval(args(0))
If Err.Number <> 0 Then
    WScript.Echo "Ошибка вычисления"
Else
    WScript.Echo "Результат: " & result
End If
