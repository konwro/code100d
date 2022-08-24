'Enumerate Registry Keys Recursively

Const HKEY_CLASSES_ROOT= &H80000000
Const HKEY_CURRENT_USER= &H80000001
Const HKEY_LOCAL_MACHINE= &H80000002
Const HKEY_USERS = &H80000003
Const HKEY_CURRENT_CONFIG= &H80000005

' select scope
'strKeyPath = "SOFTWARE"
'strKeyPath = "SOFTWARE\Microsoft"
'strKeyPath = "SOFTWARE\Microsoft\Windows NT"
strKeyPath = "SOFTWARE\Microsoft\Windows NT\CurrentVersion"
'strKeyPath = "SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList"

Set reg = GetObject("winmgmts://./root/default:StdRegProv")

EnumerateKeys HKEY_LOCAL_MACHINE, strKeyPath

Sub EnumerateKeys(hive, key)
WScript.Echo key
reg.EnumKey hive, key, arrSubKeys
If Not IsNull(arrSubKeys) Then
For Each subkey In arrSubKeys
EnumerateKeys hive, key & "\" & subkey
Next
End If
End Sub

'https://www.vbsedit.com/scripts/
