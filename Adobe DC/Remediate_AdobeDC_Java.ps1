Script: Remediate-AdobeDC_Java
Description:
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
Run as: Admin
Context: 32 & 64 Bit
#> 

New-ItemProperty -LiteralPath "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" -Name "bDisableJavaScript" -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
