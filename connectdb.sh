#!/bin/bash

if [[ -d $dbConnect ]]; then
	cd $dbConnect 
	. ../tablemenu.sh
	echo "You joined to $dbConnect Database successfully"
else
	echo "connection failed"
fi
