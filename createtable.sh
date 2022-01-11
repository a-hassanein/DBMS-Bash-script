#!/bin/bash
function datatypeMenu(){
	datatypeMenu=$(whiptail --title "Data Type Menu " --fb --menu "select Data Type" 15 60 4 \
		"1" "int"
		"2" "str"
		"3" "boolean" 3>&1 1>&2 2>&3)
		
		case datatypeMenu in 
			1) 
				datatype="int"
				;;

			2) 
				datatype="str"
				;;
			3)
				datatype="boolean"
				;;
		esac
	}



if [[ -f $tableName ]] ; then
	whiptail --title "Create Table Message" --msgbox "This table $tableName is already exist" 8 45
else
	colNumber=$(whiptail --title "column Number" --inputbox "Enter column number" 8 45 3>&1 1>&2 2>&3)
	touch $tableName
	touch .$tableName
	#echo $colNumber >> $tableName
	echo "you are sucessfully created a table"

	i=1
	datatype=""
	fasel=":"
	isPrimary=""
	primarykeyMenu="2"
	tableInfo="$colName$fasel$datatype$fasel$isPrimary"

	while [ $i -le $colNumber ]
	do
		
        	colName=$(whiptail --title "column Name" --inputbox "Enter Column $i Name "  8 45 3>&1 1>&2 2>&3)

		     datatypeMenu=$(whiptail --title "Data Type Menu " --fb --menu "select Data Type" 15 60 4 \
                  	 "1" "int" \
                  	 "2" "str" \
                   	 "3" "boolean" 3>&1 1>&2 2>&3)
   
                   case $datatypeMenu in
                           1)
                                  datatype="int"
                                  ;;
  
                          2)
                                 datatype="str"
                                  ;;
                          3)
                                 datatype="boolean"
                                  ;;
                  esac

		  if [[ $primarykeyMenu == "2" ]]; then


		  primarykeyMenu=$(whiptail --title "Primary Key Menu " --fb --menu "Is column primary key?" 15 60 4 \
			"1" "yes" \
			"2" "no" 3>&1 1>&2 2>&3)
		  case $primarykeyMenu in
			1)
				 isPrimary="PK"
				 ;;
			2)
				 isPrimary=""
				 ;;
		  esac



		  fi
		
		
		  if [[ i -eq $colNumber ]]; then
			    echo -n $colName >> $tableName;
			    echo -n $colName$fasel$datatype$fasel$isPrimary >> .$tableName;

		    else
			      echo -n $colName$fasel >> $tableName;
			      echo -n $colName$fasel$datatype$fasel$isPrimary$fasel >> .$tableName;
		  fi

        	((i++))
		isPrimary=""	
	done	
	whiptail --title "Create table Message" --msgbox "You created $tableName sucessfully" 8 45
fi



. ../tablemenu.sh




