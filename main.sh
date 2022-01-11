#!/bin/bash

function mainMenu (){


	mainMenu=$(whiptail --title "Main Menu" --fb --menu "select options:" 15 60 4 \
		"1" "Creat DataBase" \
		"2" "List DataBase" \
		"3" "Conect To DataBase" \
		"4" "Drop DataBase" 3>&1 1>&2 2>&3)

	case $mainMenu in
		1)
			echo "Create DataBase"
			dbName=$(whiptail --title "Create DataBase" --inputbox "Enter your data base name to creat" 8 45 3>&1 1>&2 2>&3)
			echo $dbName 
			. ./createdb.sh
		        mainMenu	
			;;


		2)
                         echo "List & Number of  DataBases"
			 databaselist=$(ls -d */)
                         databaseNo=$(ls -d */ | cut -f1 -d"/" | wc -w)
			whiptail --title "Number of DataBases" --msgbox "Number of DataBases is : $databaseNo" 8 45
                        whiptail --title "List of DataBases" --msgbox "$databaselist" 45 45
			mainMenu
                        ;;

		3)
                         echo "Conect to DataBase"
			 dbConnect=$(whiptail --title "Conect to DataBase" --inputbox "Enter your DataBase name to conect" 8 45 3>&1 1>&2 2>&3)
			 echo $dbConnect
			# cd $dbConnect
			. ./connectdb.sh
			;;
             

		4)
                	echo "Drop DataBase"
                        dropName=$(whiptail --title "Drop DataBase" --inputbox "Enter your data base name to delete" 8 45 3>&1 1>&2 2>&3)
                        echo $dropName
                        . ./dropdb.sh
			mainMenu
                        ;;




		esac
}

mainMenu
