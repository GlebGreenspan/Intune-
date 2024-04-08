$TargetFile =  "C:\Windows\explorer.exe"
$ShortcutFile = "$env:USERPROFILE\Desktop\CompanyPortal.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.Arguments="shell:AppsFolder\Microsoft.CompanyPortal_8wekyb3d8bbwe!App"
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()