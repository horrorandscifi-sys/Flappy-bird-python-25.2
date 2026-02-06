' CORE CALCULATION ENGINE
On Error Resume Next
Set args = WScript.Arguments
input = args(0)

' Эмуляция сложной обработки
WScript.Sleep 500 

result = Eval(input)

If Err.Number <> 0 Then
    WScript.Echo "CRITICAL_ERROR: Неверный синтаксис"
Else
    WScript.Echo result
End If
