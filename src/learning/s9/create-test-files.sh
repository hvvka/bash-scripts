#!/bin/bash

NUMBER_OF_FILES=$1
DIRECTORY="test"

for (( i=1; i<=$NUMBER_OF_FILES; i++ ))
do
  touch $DIRECTORY/$i
  if (( $i % 2 )); then
    echo "don't" > $DIRECTORY/$i
  fi
done
