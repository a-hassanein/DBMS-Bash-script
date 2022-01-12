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
                                        echo "Create Table"
                                        tableName=$(whiptail --title "List DataBases" --inputbox "Enter Table Name" 8 45 3>&1 1>&2 2>&3)
                                        echo $tableName
                                        . ../createtable.sh
                                        ;;
                                2)
                                        echo "List Tables"
					tablelist=$(ls)
					tablelistNo=$(ls | cut -f1 -d" " | wc -w)
                                         whiptail --title "Number of tables" --msgbox "Number of tables is : $tablelistNo" 8 45
					 whiptail --title "List of Table" --scrolltext --msgbox "$tablelist" 45 45 
					 tableMenu
                                        ;;
                                3)
                                        echo "Drop Table"
					droptable=$(whiptail --title "Delete Table" --inputbox "Enter table name" 8 45 3>&1 1>&2 2>&3)
					. ../droptable.sh
					tableMenu
                                        ;;
                                4)
                                        echo "Insert Into Table"
                                         . ../insertdata.sh
					 tableMenu
                                        ;;
                                5)
                                        echo "Select From Table"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
                                6)
                                        echo "Delete From Table"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
                                7)
                                        echo "Update Table"
                                         whiptail --title "List DataBases" --msgbox "Your choose 2" 8 45
                                        ;;
                                8)
                                        echo "Back to Main Menu"
                                        cd ..
                                         . ./main.sh
                                        ;;
                        esac
}
		
	tableMenu
