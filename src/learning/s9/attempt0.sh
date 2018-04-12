#!/bin/bash

DIR="$1"

for file in $DIR/*; do
  if [ -s $file ]
  then
    rm -f $file
  fi
done


#Kasowanie wszystkich plików pustych (o zerowej wielkości) w zadanym katalogu (parametr wywołania skryptu). Skrypt powinien tworzyć w zadanym pliku listę skasowanych plików. Nie powinien analizować dołączeń symbolicznych.

