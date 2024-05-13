Windows Defender Package Update Automation
Includes Scheduled Task that runs daily & Script that updates a package.

To use:

Decide where you want to store the script.
Update the XML for the Scheduled task to where you store the script
Import the Scheduled Task, leverage a gSMA account or other service account with permissions to both CM & the Package Location
Account with access to file share & CM
Scheduled task runs on machine with CM Console (So it has access to the PS Commandlets)
These requirements are NOT the same as Johan's script which doesn't leverage the CM PS Commandlets
Once you have this setup, you can add steps to your Task Sequence to leverage the updated Defender Defs. Look to Jorgen's blog in the link above for more details about integration.

Scheduled Task:
In my lab, I'm just using a user account, but in Production, I'm using a gSMA account.
Defender Updater 01

Log File:
Defender Updater 02

Package in Console:
Defender Updater 03

