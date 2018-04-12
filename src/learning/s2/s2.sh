#!/bin/bash

#Tworzenie nowych plików w zadanym katalogu (parametr wywołania skryptu), według listy umieszczonej w pliku (drugi parametr wywołania skryptu). Nowe pliki mają być zerowej wielkości (puste). Jeżeli jakiś plik już istnieje, to nie powinien zostać zniszczony.

CAT=$1
FILE=$2

while read LINE
do
  touch $CAT/$LINE
done < $FILE
