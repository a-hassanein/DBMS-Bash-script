#!/bin/bash

#cd $dbConnect 
#echo $dbConnect



  
  cd ./$dbConnect 2>>./.error.log
  if [[ $? == 0 ]]; then
    echo "Database $dbName was Successfully Selected"
    
  else
    echo "Database $dbName wasn't found"
    
  fi	
