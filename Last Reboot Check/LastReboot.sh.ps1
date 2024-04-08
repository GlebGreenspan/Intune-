#Get all enabled servers that are in the domain.
$Servers = Get-ADComputer -Filter {(OperatingSystem -like "*Server*") -and (Enabled -eq $true)} -Properties OperatingSystem | select -ExpandProperty Name | Sort-Object
