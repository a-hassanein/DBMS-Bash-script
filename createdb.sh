#!/bin/bash

# create database "make a dir ... you should send $1 after ./createdb.sh $1"

if [[ -d $dbName ]]; then
	echo "DataBase $dbName Already Exists";
else
	mkdir $dbName
	echo "Your DataBase $dbName sucessfully created"
fi	
