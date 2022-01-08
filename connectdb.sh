#!/bin/bash
function tableMenu (){
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
                                        echo "Back to Main Menu"
                                         whiptail --title "Main Menu" --msgbox "Your choose 2" 8 45
					 . ../mainMenu
					;;
			esac

		}

if [[ -d $dbConnect ]]; then
	cd $dbConnect 
	tableMenu
	echo "You joined to $dbConnect Database successfully"
else
	echo "connection failed"
fi
