Microsoft Remote Desktop Installation Script
This script is an example to show how to use https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts to install applications. In this case the script will download the Microsoft Remote Desktop app from the Microsoft download servers and then install it onto the Mac.

Scenario
This scripts intended usage scenario is for customers who wish to use a shell script to deploy the Microsoft Remote Desktop app.

Quick Run
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/microsoft/shell-intune-samples/master/Apps/Remote%20Desktop/installRemoteDesktop.sh)"
Script Settings
Run script as signed-in user : No
Hide script notifications on devices : Not configured
Script frequency : Not configured
Number of times to retry if script fails : 3
