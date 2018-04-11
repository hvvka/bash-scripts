#!/bin/bash

CAT=$1
FILE=$2

cat $FILE | while read LINE
do
  if [[ ! -e $CAT/$LINE ]]; then
    echo $LINE
    touch $CAT/$LINE
  fi
done


#Tworzenie nowych plików w zadanym katalogu (parametr wywołania skryptu), według listy umieszczonej w pliku (drugi parametr wywołania skryptu). Nowe pliki mają być zerowej wielkości (puste). Jeżeli jakiś plik już istnieje, to nie powinien zostać zniszczony.
