To make this possible I’ve deployed a Powershell script with Microsoft Intune. The script (updated version with custom icon) is very simple:

#Variables creating local folder and download .ico file
$LocalIconFolderPath = "C:\URLIcon"
$SourceIcon = "http://nickydewestelinck.be/wp-content/icons/salesforce.ico"
$DestinationIcon = "C:\URLIcon\salesforce.ico"


#Step 1 - Create a folder to place the URL icon
New-Item $LocalIconFolderPath -Type Directory

#Step 2 - Download a ICO file from a website into previous created folder
curl $SourceIcon -o $DestinationIcon

#Step 3 - Add the custom URL shortcut to your Desktop with custom icon
$new_object = New-Object -ComObject WScript.Shell
$destination = $new_object.SpecialFolders.Item('AllUsersDesktop')
$source_path = Join-Path -Path $destination -ChildPath '\\Salesforce.url'
$source = $new_object.CreateShortcut($source_path)
$source.TargetPath = 'https://login.salesforce.com'
$IconLocation = ”C:\URLIcon\salesforce.ico”
$source.Save()
