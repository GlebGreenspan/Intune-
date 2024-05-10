Intune Company Portal Installation Script
This script is an example to show how to use https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts to install applications. In this case the script will download the Company Portal pkg file from the Microsoft download servers and then install it onto the Mac.

Scenario
This script has a few scenarios

DEP/ADE enrolled Macs that need to complete their device registration for conditional access. In this scenario the script should be deployed via Intune.

Provide end users with a quick and easy way to get started with their Mac enrollment. In this scenario the end users should be provided with the following to copy and paste into Terminal on their Mac.

Quick Run
sudo /bin/zsh -c "$(curl -L https://aka.ms/installcp)" ; open "/Applications/Company Portal.app"
Script Settings
Run script as signed-in user : No
Hide script notifications on devices : Not configured
Script frequency : Not configured
Number of times to retry if script fails : 3
Log File
The log file will output to /Library/Logs/Microsoft/IntuneScripts/installCompanyPortal/Company Portal.log by default. Exit status is either 0 or 1. To gather this log with Intune remotely take a look at https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts#troubleshoot-macos-shell-script-policies-using-log-collection
