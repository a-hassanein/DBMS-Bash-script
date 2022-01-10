#!/bin/bash

if [[ -f $tableName ]] ; then
	whiptail --title "Error" --msgbox "This table is already exist" 8 45
else
	colNumber=$(whiptail --title "column Number" --inputbox "Enter column number" 8 45 3>&1 1>&2 2>&3)
	touch $tableName
	echo $colNumber >> $tableName
	echo "you are sucessfully created a table"
fi
