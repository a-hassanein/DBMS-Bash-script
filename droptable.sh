#!/bin/bash

if [[ -f $droptable ]]; then

	rm $droptable
	whiptail --title "Delete table Message" --msgbox "You deleted $droptable sucessfully" 8 45
	#echo "You deleted $droptable sucessfully"
else
	whiptail --title "Delete table Message" --msgbox "Faild to delete table $droptable " 8 45
	#echo "Faild to delete table"
fi
	
