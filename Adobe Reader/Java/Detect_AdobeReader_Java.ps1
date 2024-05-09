Script: Get-AdobeReader_Java
Description:
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
Run as: Admin
Context: 32 & 64 Bit
#> 

$Path = "HKLM:\SOFTWARE\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown"
$Name = "bDisableJavaScript"
$Type = "DWORD"
$Value = 1

Try {
    $Registry = Get-ItemProperty -Path $Path -Name $Name -ErrorAction Stop | Select-Object -ExpandProperty $Name
    If ($Registry -eq $Value){
        Write-Output "Compliant"
        Exit 0
    } 
    else
    {
    Write-Warning "Not Compliant"
    Exit 1
    }
} 
Catch {
    Write-Warning "Not Compliant"
    Exit 1
}
