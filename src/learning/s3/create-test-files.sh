#!/bin/bash

NUMBER_OF_FILES=$1
DIRECTORY="test"

for (( i=1; i<=$NUMBER_OF_FILES; i++ ))
do
  touch $DIRECTORY/${i}
  
  random=$[ ( $RANDOM % 2 ) ]  
  #echo $random

  if [ $random = 1 ]  #spacje przy = konieczne!
  then
    chmod +x $DIRECTORY/$i
    #echo $i
  fi
done

#executable_files=$(( ( RANDOM % $NUMBER_OF_FILES )  + 1 ))  #generates random number

