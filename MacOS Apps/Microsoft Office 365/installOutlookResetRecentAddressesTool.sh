#!/bin/bash
#set -x

############################################################################################
##
## Script to download and install OutlookResetRecentAddresses app
##
###########################################

## Copyright (c) 2020 Microsoft Corp. All rights reserved.
## Scripts are not supported under any Microsoft standard support program or service. The scripts are provided AS IS without warranty of any kind.
## Microsoft disclaims all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a
## particular purpose. The entire risk arising out of the use or performance of the scripts and documentation remains with you. In no event shall
## Microsoft, its authors, or anyone else involved in the creation, production, or delivery of the scripts be liable for any damages whatsoever
## (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary
## loss) arising out of the use of or inability to use the sample scripts or documentation, even if Microsoft has been advised of the possibility
## of such damages.

# Set script variables
appname="OutlookResetRecentAddresses"
tempdir="/tmp"
targetapp="/Applications/Utilities/OutlookResetRecentAddresses.app"

# function to check if softwareupdate is running to prevent us from installing Rosetta at the same time as another script
isSoftwareUpdateRunning () {

    while ps aux | grep "/usr/sbin/softwareupdate" | grep -v grep; do

        echo "$(date) | [/usr/sbin/softwareupdate] running, waiting..."
        sleep 60

    done

    echo "$(date) | [/usr/sbin/softwareupdate] isn't running, lets carry on"

}

# function to check if we need Rosetta 2
checkForRosetta2 () {

    # Wait here if software update is already running
    isSoftwareUpdateRunning

    echo "$(date) | Checking if we need Rosetta 2 or not"

    processor=$(/usr/sbin/sysctl -n machdep.cpu.brand_string)
    if [[ "$processor" == *"Intel"* ]]; then

        echo "$(date) | $processor processor detected, no need to install Rosetta."
        
    else

        echo "$(date) | $processor processor detected, lets see if Rosetta 2 already installed"

        # Check Rosetta LaunchDaemon. If no LaunchDaemon is found,
        # perform a non-interactive install of Rosetta.
        
        if [[ ! -f "/Library/Apple/System/Library/LaunchDaemons/com.apple.oahd.plist" ]]; then
            /usr/sbin/softwareupdate --install-rosetta --agree-to-license
        
            if [[ $? -eq 0 ]]; then
                echo "$(date) | Rosetta has been successfully installed."
            else
                echo "$(date) | Rosetta installation failed!"
                exit 1
            fi
    
        else
            echo "$(date) | Rosetta is already installed. Nothing to do."
        fi
    fi

}

checkForRosetta2

# Let's check to see if SetDefaultMailApp is already installed...
if [[ -a $targetapp ]]; then
  echo "$appname already installed, nothing to do here"
  exit 0
else
  echo "Downloading $appname"
  curl -L -o "$tempdir/$appname.zip" 'https://download.microsoft.com/download/D/B/D/DBDE37DD-7955-47A6-8E1A-C993F91C5753/OutlookResetRecentAddresses.zip'
  cd "$tempdir"
  unzip -o "$appname.zip"

  echo "Moving $appname to Applications folder"
  mv -f "$tempdir/$appname.app" $targetapp

  echo "Fix up permissions"
  sudo chown -R root:wheel "$targetapp"

  echo "Cleaning up tmp files"
  rm -rf "$tempdir/$appname.zip"

fi
