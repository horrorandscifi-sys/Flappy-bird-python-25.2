 English version / Calculation Engine
On Error Resume Next
Set args = WScript.Arguments
result = Eval(args(0))
If Err.Number <> 0 Then
    WScript.Echo "ERROR"
Else
    WScript.Echo result
End If
