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
			dbName=$(whiptail --title "Create DataBase" --inputbox "enter your data base name" 8 45 3>&1 1>&2 2>&3)
			echo $dbNaame 
			. ./createdb.sh 
			;;


		2)
                         echo "List DataBase"
                        whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                        ;;

		3)
                         echo "Conect to DataBase"
                        whiptail --title "Option 3" --msgbox "Your choose 3" 8 45
                        ;;


		esac
}

mainMenu
