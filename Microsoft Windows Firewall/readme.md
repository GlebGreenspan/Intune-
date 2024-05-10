Microsoft Intune - Custom Compliance - Windows Firewall Auditing
The script checks the Windows Firewall auditing settings

For Microsoft Defender portal to start receiving the data, you must enable Audit Events for Windows Defender Firewall with Advanced Security:

Audit Filtering Platform Packet Drop failure:enabled
Audit Filtering Platform Connection failure:enabled
Note: it expects that both settings are configured to audit failure events only.

Host firewall reporting in Microsoft Defender for Endpoint

Intune Configuration Policy
Firewall auditing settings can be configured within the Microsoft Intune Firewall policy Endpoint security | Firewall

Configuration settings / Auditing / Object Access Audit Filtering Platform Connection
Configuration settings / Auditing / Object Access Audit Filtering Platform Packet Drop
Intune Compliance Detection Script
Windows Firewall Auditing

Intune Compliance JSON
Windows Fireall Auditing Compliance Policy

For compliance the expected results are:

FilteringPlatformPacketDrop:Failure
FilteringPlatformConnection:Failure
Check Compliance Results
Run the below command in PowerShell to check the compliance script results on the device.

# Trigger Intune Synch
Start-Process -FilePath "C:\Program Files (x86)\Microsoft Intune Management Extension\Microsoft.Management.Services.IntuneWindowsAgent.exe" -ArgumentList intunemanagementextension://synccompliance
# Chck the logs
Get-Content -Path "c:\programdata\Microsoft\IntuneManagementExtension\Logs\AgentExecutor.log" | Select-String -Pattern 'FilteringPlatformPacketDrop|FilteringPlatformConnection'
Get-Content -Path "C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\HealthScripts.log" | Select-String -Pattern 'FilteringPlatformPacketDrop|FilteringPlatformConnection' 
