#!/bin/bash

NUMBER_OF_FILES=$1
DIRECTORY="test"

for (( i=1; i<=$NUMBER_OF_FILES; i++ ))
do
  touch $DIRECTORY/$i
  echo $(pwgen $[ ( $RANDOM % 20 ) + 1 ] $[ ( $RANDOM % 10 ) + 1 ]) > $DIRECTORY/$i 
  
  random=$[ ( $RANDOM % 2 ) ]  

  if [ $random = 1 ]  #spaces next to = are required!
  then
    chmod +x $DIRECTORY/$i
  fi
done
