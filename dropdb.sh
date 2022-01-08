#!/bin/bash


if [[ -d $dropName ]]; then
	rm -R $dropName
	echo "You deleted $dropName database secessfully"
else
	echo "Error to delete database"
fi
