Script: Get-TemplateRemediation
Description: Clears the download folder
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
Run as: User
Context: 64 Bit
#> 

Get-ChildItem "$env:USERPROFILE\Downloads" | Remove-Item -recurse -force
