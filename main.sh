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
			;;


		2)
                         echo "List & Number of  DataBases"
                        whiptail --title "List DataBases" --msgbox "List of DataBases" 8 45
			./listdb.sh
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
                        ;;




		esac
}

mainMenu
