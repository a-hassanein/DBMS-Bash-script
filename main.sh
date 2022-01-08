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
			 dbConect=$(whiptail --title "Conect to DataBase" --inputbox "Enter your DataBase name to conect" 8 45 3>&1 1>&2 2>&3)
			 echo $dbConect
			 #. ./conectdb.sh

			 tableMenu=$(whiptail --title "Table Menu" --fb --menu "select options:" 17 60 0\
		 		"1" "Create Table" \
				"2" "List Tables" \
				"3" "Drop Table" \
				"4" "Insert Into Table" \
				"5" "Select from Table" \
				"6" "Delete from Table" \
				"7" "Update Table" \
				"8" "Back to Main Menu" 3>&1 1>&2 2>&3)

			case $tableMenu in
				1)
					echo "List DataBase"
                       			 whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                        		;;
				2)
                                        echo "List DataBase"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
				3)
                                        echo "List DataBase"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
				4)
                                        echo "List DataBase"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
				5)
                                        echo "List DataBase"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
				6)
                                        echo "List DataBase"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
				7)
                                        echo "List DataBase"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
				8)
                                        echo "List DataBase"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
			esac


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
