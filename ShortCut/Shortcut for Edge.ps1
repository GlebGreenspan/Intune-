$SourceFileLocation = “${Env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe”

$ShortcutLocation = “$env:USERPROFILE\Desktop\edge.lnk”

$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)

$Shortcut.TargetPath = $SourceFileLocation

$Shortcut.Save()