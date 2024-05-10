Zoom Installation Script
This script is an example to show how to use https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts to install applications. In this case the script will download the Zoom.pkg file from the Zoom download servers and then install it onto the Mac.

Script Settings
Run script as signed-in user : No
Hide script notifications on devices : Not configured
Script frequency : Weekly
Mac number of times to retry if script fails : 3
Log File
The log file will output to /Library/Logs/Microsoft/IntuneScripts/installZoom/Zoom.log by default. Exit status is either 0 or 1. To gather this log with Intune remotely take a look at https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts#troubleshoot-macos-shell-script-policies-using-log-collection
