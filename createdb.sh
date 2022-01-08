#!/bin/bash

# create database "make a dir"

if [[ -d $dbName ]]; then
	echo "DataBase $dbName Already Exists";
else
	mkdir $dbName
	echo "Your DataBase $dbName sucessfully created"
fi	
