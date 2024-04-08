$SourceFileLocation = “$($env:ProgramW6432)\Microsoft Office\root\Office16\OUTLOOK.EXE”

$ShortcutLocation = “$env:USERPROFILE\Desktop\outlooknew.lnk”

$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)

$Shortcut.TargetPath = $SourceFileLocation

$Shortcut.Save()