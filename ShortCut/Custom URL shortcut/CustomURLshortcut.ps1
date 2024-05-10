$new_object = New-Object -ComObject WScript.Shell
$destination = $new_object.SpecialFolders.Item(“Desktop”)
$source_path = Join-Path -Path $destination -ChildPath “\\NAME HERE .url”
$source = $new_object.CreateShortcut($source_path)
$source.TargetPath = 'https://google/com'
$Icon = 'C:\URLIcon\google.ico'
$source.Save()
