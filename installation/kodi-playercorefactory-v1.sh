#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Zain
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


echo "################################################################"
echo "Checking if git is installed"
echo "Install git for an easy installation"

	# G I T

	# check if git is installed
	if which git > /dev/null; then
		echo "git was installed. Proceding..."

		else

		echo "################################################################"
		echo "installing git for this script to work"
		echo "################################################################"

	  	sudo apt-get install git -y
		  	
	fi

# Check if there is already a folder in tmp

rm -rf /tmp/kodi-playercorefactory

# Download the kodi-playercorefactory repo:

echo "################################################################"
echo "Downloading the files from github to tmp directory"

git clone https://github.com/NapoleonWils0n/kodi-playercorefactory.git /tmp/kodi-playercorefactory

# Create a git folder

[ -d $HOME"/git" ] || mkdir -p $HOME"/git"

mv -r /tmp/kodi-playercorefactory ~/git/

rm -rf /tmp/kodi-playercorefactory

# Copy the playercorefactory.xml file to your kodi userdata folder

cp  ~/git/kodi-playercorefactory/linux/combined/playercorefactory.xml ~/.kodi/userdata/playercorefactory.xml 

# Check ~/.bashrc file includes the folowing PATH:

#if [ -d "$HOME/git/kodi-playercorefactory/bash-scripts" ] ; then
# 		PATH="$HOME/git/kodi-playercorefactory/bash-scripts:$PATH"
#fi

echo "################################################################"
echo "################  kodi playcorefactory installed    ############"
echo "################################################################"
