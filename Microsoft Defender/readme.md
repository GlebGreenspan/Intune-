Microsoft Defender Installation Script
This script is an example to show how to use https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts to install applications. In this case the script will download Defender from the Microsoft download servers and then install it onto the Mac.

The main scenario for this script is to have Defender install last during initial enrollment to avoid any issues when the MDE network extension is loaded. The script has an array of apps that it will wait for before beginning the Defender install. Edit this list as appropriate for your deployment.
waitForTheseApps=(  "/Applications/Microsoft Edge.app"
                    "/Applications/Microsoft Outlook.app"
                    "/Applications/Microsoft Word.app"
                    "/Applications/Microsoft Excel.app"
                    "/Applications/Microsoft PowerPoint.app"
                    "/Applications/Microsoft OneNote.app"
                    "/Applications/Microsoft Teams.app"
                    "/Applications/Visual Studio Code.app"
                    "/Applications/Company Portal.app")
                    QUICK RUN
                    sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/microsoft/shell-intune-samples/master/Apps/Defender/installDefender.sh)" 
                    Script Settings
Run script as signed-in user : No
Hide script notifications on devices : Not configured
Script frequency : Not configured
Number of times to retry if script fails : 3
Log File
The log file will output to /Library/Logs/Microsoft/IntuneScripts/installDefender by default. Exit status is either 0 or 1. To gather this log with Intune remotely take a look at https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts#troubleshoot-macos-shell-script-policies-using-log-collection
