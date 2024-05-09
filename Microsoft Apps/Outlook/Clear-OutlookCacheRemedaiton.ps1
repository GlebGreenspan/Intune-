Script: Clear-DownloadFolder
Description:
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
Run as: Admin
Context: 64 Bit
#> 

Start-Process -FilePath 'C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE' -ArgumentList '/cleanautocompletecache','/recycle'
