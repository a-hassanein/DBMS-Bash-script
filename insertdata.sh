#!/bin/bash

checktablename=$(whiptail --title "Choose Table" --inputbox "Enter Table Name" 8 45 3>&1 1>&2 2>&3)

if ! [[ -f $checktablename ]]; then
	whiptail --title "Error Message" --msgbox "Table $checktablename you entered doesn't exist, choose another one " 8 45
       checktablename=$(whiptail --title "Choose Table" --inputbox "Enter Table Name" 8 45 3>&1 1>&2 2>&3)
fi 
checkcolsno=`awk 'END {print NR}' .$checktablename`
fasel=":"
satrfasel="\n"

for (( i=2 ; i <= $checkcolsno ; i++ )); do

	checkcolname=`awk 'BEGIN {FS=":"}{if ( NR=='$i' ) print $1 }' .$checktablename`
	checkdatatype=`awk 'BEGIN {FS=":"}{if ( NR=='$i' ) print $2 }' .$checktablename`
	checkisprimary=`awk 'BEGIN {FS=":"}{if ( NR=='$i' ) print $3 }' .$checktablename`
	
	record=$(whiptail --title "Your Data" --inputbox "Enter data for $checkcolname with in data type ($checkdatatype)" 8 45 3>&1 1>&2 2>&3)

	if [[ $checkdatatype == "int" ]]; then
		while ! [[ $record =~ ^[0-9]+$ ]]; do
			whiptail --title "Error Message" --msgbox "Not integer, Enter Record Again" 8 45
			record=$(whiptail --title "Your Data" --inputbox "Enter data for $checkcolname with in data type ($checkdatatype)" 8 45 3>&1 1>&2 2>&3)
		done
	$booleancheck="[Tt][Rr][Uu][Ee]|[Ff][Aa][Ll][Ss][Ee]"
	elif [[ $checkdatatype == "boolean" ]]; then
	       while ! [[ $record =~ [^$booleancheck] ]]; do
	       		whiptail --title "Error Message" --msgbox "Not a boolean; Enter true or false only"8 45
	 		record=$(whiptail --title "Your Data" --inputbox "Enter data for $checkcolname with in data type ($checkdatatype)" 8 45 3>&1 1>&2 2>&3)
		done


	fi
done



		

