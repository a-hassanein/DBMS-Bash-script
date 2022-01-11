#!/bin/bash


if [[ -d $dropName ]]; then
	rm -R $dropName
	whiptail --title "Drop Databse Message" --msgbox "You deleted $dropName database secessfully" 8 45
	echo "You deleted $dropName database secessfully"
else
	whiptail --title "Drop Databse Message" --msgbox "Error to delete database $dropName" 8 45
	echo "Error to delete database"
fi
