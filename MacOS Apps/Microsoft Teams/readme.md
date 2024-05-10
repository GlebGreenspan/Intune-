Microsoft Teams Installation Script
This script is an example to show how to use https://docs.microsoft.com/en-us/mem/intune/apps/macos-shell-scripts to install applications. In this case the script will download the Teams pkg file from the Microsoft download servers and then install it onto the Mac.

There are two versions of the Teams Clients and you'll find a sample script for each.

Microsoft Teams Classic
Microsoft Teams (for work and scool)
More information about https://learn.microsoft.com/en-us/microsoftteams/new-teams-desktop-admin.

Audio Driver
To share system audio in a teams call, you also need to install the Teams Audio Driver. This is included with the standard package but on older packages didn't used to be installed since it interrupted any audio that was playing. Both of the sample packages shared here will force the Audio Driver to automatically install to prevent standard desktop users not being able to install it later.

Scenario
This script is intended for customers who need to deploy Teams via the Intune Scripting Agent.
