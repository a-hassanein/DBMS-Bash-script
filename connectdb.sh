#!/bin/bash

if [[ -d $dbConnect ]]; then
	cd $dbConnect 
	. ../tablemenu.sh
	echo "You joined to $dbConnect Database successfully"
else
	whiptail --title "Error Message" --msgbox "Connection failed" 8 45
        . ./main.sh	
	echo "connection failed"
fi
