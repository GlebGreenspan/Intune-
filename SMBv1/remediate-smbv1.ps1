Script: remediate-fastboot.ps1
Description: Disables SMBv1 via registry key
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
Run as: System
Context: 64 Bit
#> 

Set-SmbServerConfiguration -EnableSMB1Protocol 0
