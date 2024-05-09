Script: Get-TemplateRemediation
Description:
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
Run as: System
Context: 64 Bit
#> 

Get-ChildItem C:\Users\*\Downloads\* | Remove-Item -recurse -force
