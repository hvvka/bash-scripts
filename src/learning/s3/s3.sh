#!/bin/bash

#Kasowanie wszystkich plików w zadanym katalogu (parametr wywołania skryptu), poza plikami wykonywalnymi, mającymi ustawiony bit dostępu typu „execute”.

CAT=$1

FILES=$(find $CAT -type f ! -perm -u+x)

for i in $FILES
do
  rm $i
done
