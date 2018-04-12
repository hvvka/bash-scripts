#!/bin/bash

#Przesuwanie wszystkich plików z ustawionym prawem wykonywania z jednego katalogu do drugiego. Pozostałe pliki w katalogu nie powinny być ruszane. Nazwy katalogów, źródłowego i docelowego, zadawane jako parametry skryptu.

if [ "$#" != "2" ]
then
  echo "Wrong number of parameters"
  exit 1
fi

if [[ ! -d "$1" || ! -d "$2" ]]
then
  echo "Parameters should be directories!"
  exit 1
fi

CAT1="$1"
CAT2="$2"

for file in $CAT1/*
do
  if [ -x $file ]
  then
    mv $file $CAT2/
  fi
done
