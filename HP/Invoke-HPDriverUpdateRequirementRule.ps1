$Manufacturer = (Get-WmiObject -Class "Win32_ComputerSystem" | Select-Object -ExpandProperty Manufacturer).Trim()
switch -Wildcard ($Manufacturer) {
    "*HP*" {
        Write-Output -InputObject "HP"
    }
    "*Hewlett-Packard*" {
        Write-Output -InputObject "HP"
    }
    default {
        Write-Output -InputObject $Manufacturer
    }
}