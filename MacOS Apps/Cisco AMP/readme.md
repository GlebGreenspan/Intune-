Cisco AMP for Endpoints Mac Connector Installation Script
This script is an example to show how to use Intune Shell https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts. In this case the script will download Cisco AMP for Endpoints Mac Connector from secure Azure Blob Storage servers and then install it onto the Mac.

Custom Config
As Cisco documents https://www.cisco.com/c/en/us/support/docs/security/amp-endpoints/216089-advisory-for-amp-for-endpoints-mac-conne.html, the AMP Endpoint Connect requires certain permissions before it will work correctly.

The file Cisco AMP Config.mobileconfig is an Intune macOS custom configuration profile that will pre-configure your Mac to allow the AMP connector to launch and run correctly.

For more information on deploying these files, see the following: https://docs.microsoft.com/en-us/mem/intune/configuration/custom-settings-macos.

Note: If you assign the script and custom profile to the same group of users, the profile will always be installed before the application due to the time taken to download the binary and run through the installation.

Script Settings
Run script as signed-in user : No
Hide script notifications on devices : Yes
Script frequency : Not configured
Number of times to retry if script fails : 3
Log File
The log file will output to /Library/Logs/Microsoft/IntuneScripts/CiscoAMP/Cisco AMP.log by default. Exit status is either 0 or 1. To gather this log with Intune remotely take a look at https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts#troubleshoot-macos-shell-script-policies-using-log-collection
