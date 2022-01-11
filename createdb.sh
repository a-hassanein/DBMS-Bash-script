#!/bin/bash

# create database "make a dir"

if [[ -d $dbName ]]; then
	echo "DataBase $dbName Already Exists";
	whiptail --title "Create Databse Message" --msgbox "DataBase $dbName Already Exists" 8 45
else
	mkdir $dbName
	echo "Your DataBase $dbName sucessfully created"
	whiptail --title "Create Databse Message" --msgbox "Your DataBase $dbName sucessfully created" 8 45
fi	
