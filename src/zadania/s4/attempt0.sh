#!/bin/bash

CAT=$1

files=$(find $CAT -type f -perm -u+x -exec ls -lSr;)
iterator=0

for i in $files
do
  echo $i
  mv $i $i.$iterator
  ((iterator++))
done

#Numerowanie wszystkich plików w zadanym katalogu (parametr wywołania skryptu), do których mamy ustawione prawo wykonywania („execute”), przez dodanie dodatkowego członu rozszerzenia o postaci .<numer kolejny>. Numeracja powinna przebiegać według wielkości plików.
