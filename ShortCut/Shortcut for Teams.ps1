$SourceFileLocation = “$env:USERPROFILE\AppData\Local\Microsoft\teams\current\teams.exe”

$ShortcutLocation = “$env:USERPROFILE\Desktop\teams.lnk”

$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)

$Shortcut.TargetPath = $SourceFileLocation

$Shortcut.Save()