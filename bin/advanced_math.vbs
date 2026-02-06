On Error Resume Next
Set args = WScript.Arguments
expr = args(0)

' Расширяем стандартный набор функций
Function sqrt(n) : sqrt = Sqr(n) : End Function
Function pi() : pi = 3.1415926535 : End Function

result = Eval(expr)

If Err.Number <> 0 Then
    WScript.Echo "MATH_ERROR: " & Err.Description
Else
    WScript.Echo result
End If
