#!/bin/bash

#cd $dbConnect 
#echo $dbConnect


  
  cd ./$dbConnect 2>>./.error.log
  
  if [[ $? == 0 ]]; then
    echo "Database $dbConnect was Successfully Selected"
     
  else
    echo "Database $dbConnect wasn't found"
    
  fi	
