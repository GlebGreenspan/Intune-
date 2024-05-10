$new_object = New-Object -ComObject WScript.Shell
$destination = $new_object.SpecialFolders.Item(“Desktop”)
$source_path = Join-Path -Path $destination -ChildPath “\\afgroup.cloud.url”
$source = $new_object.CreateShortcut($source_path)
$source.TargetPath = 'https://afgroup.cloud.com'
$Icon = 'C:\URLIcon\Citrix.ico'
$source.Save()