#!/bin.bash
     tableName=$(whiptail --title "List DataBases" --inputbox "Enter Table Name" 8 45 3>&1 1>&2 2>&3)

                                         if ! [[ -f $tableName ]]; then

                                                whiptail --title "Error Message" --msgbox "Table doesn't exist" 8 45

                                                . ../selectmenu.sh
                                        else

                                                colname=$(whiptail --title "Table Records"  --inputbox "Enter Column Name" 8 45 3>&1 1>&2 2>&3)
                                                checkcolumnfound=$(awk 'BEGIN{FS=":"}{if(NR==1){for(i=1;i<=NF;i++){if($i=="'$colname'") print i}}}' $tableName)

                                                if [[ checkcolumnfound == "" ]]; then

                                                        whiptail --title "Error Message" --msgbox "Column doesn't exist" 8 45

                                                else

                                                      	value=$(whiptail --title "Column Record" --inputbox "Enter Your Value" 8 45 3>&1 1>&2 2>&3)
							#record=$(awk 'BEGIN{FS=":"}{if ($'$colname == $value') print $0}' $tableName | column -t -s ':') 
							record=$(awk 'BEGIN{FS=":"}{if ($'$checkcolumnfound'=="'$value'")  print $0}' $tableName) 
							#record2=$(awk 'BEGIN{FS=":"}{if ($1=="amr")  print $0}' /etc/passwd)

							whiptail --title "Record" --msgbox "$record" 15 45
							echo $record
							echo "hello"
							echo $value 
							#echo $checkcolumnfound

                                                fi

						

                                                . ../selectmenu.sh
                                        fi
awk 'BEGIN{FS=":"}{if ($1=="amr")  print $0}' /etc/passwd
#                                                        record=$(awk 'BEGIN{FS=":"}{if ("$'$checkcolumnfound==$value'")  print $1}' $tableName)

