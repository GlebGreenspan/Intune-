Visual Studio Code Installation Script
This script is an example to show how to use https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts to install applications. In this case the script will download Microsoft Visual Studio Code and then install it onto the Mac.

Scenario
This scripts intended usage scenario is to install Visual Studio Code via the Intune Scripting Agent.

Quick Run
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/microsoft/shell-intune-samples/master/Apps/Visual%20Studio%20Code/installVSCode.sh)"
Script Settings
Run script as signed-in user : No
Hide script notifications on devices : Not configured
Script frequency : Not configured
Mac number of times to retry if script fails : 3
Log File
The log file will output to /Library/Logs/Microsoft/IntuneScripts/installVSCode/Visual Studio Code.log by default. Exit status is either 0 or 1. To gather this log with Intune remotely take a look at https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts#troubleshoot-macos-shell-script-policies-using-log-collection
