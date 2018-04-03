#!/bin/bash
#ClamAV installer
echo "Welcome to the ClamAV installer."
read -p "Would you like to install ClamAV[y/n]: " yesno
if [ $yesno != "y" ]
then
	echo "Ok. Bye."
	exit 0
fi
#Check for crew
if [ ! $(which crew) ]
then
	echo "Please install crew from https://github.com/skycocker/chromebrew"
	exit 1
fi

#Install
echo "Please wait while ClamAV is installed..."
crew install -k clamav

#Configure freshclam
echo "Making configuration changes..."
echo -n "DNSDatabaseInfo current.cvd.clamav.net
DatabaseMirror db.us.clamav.net
DatabaseMirror database.clamav.net
" > /usr/local/etc/freshclam.conf

# Run freshclam
echo "Updating virus DB..."
freshclam -u chronos
echo "Finishing configuration..."
echo "alias freshclam='freshclam -u chronos'" >> ~/.bashrc
alias freshclam='freshclam -u chronos'
echo "Install complete!!"
