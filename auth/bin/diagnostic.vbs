Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")
For Each objItem in colItems
    WScript.Echo "OS: " & objItem.Caption
    WScript.Echo "RAM: " & Int(objItem.TotalVisibleMemorySize / 1024) & " MB"
Next
