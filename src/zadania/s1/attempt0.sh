#!/bin/bash

PATH=$1
rm -r $PATH/*.old

files=$(find $1 -type f -writable)

for file in files
do
  mv "$PATH"/"$file" "${file}.old"
done


#Zmiana nazw wszystkich plików w zadanym katalogu (parametr wywołania skryptu), do których mamy ustawione prawo zapisu, przez dopisanie dodatkowego członu .old. Wcześniej należy skasować wszystkie pliki, które już mają takie rozszerzenie.

