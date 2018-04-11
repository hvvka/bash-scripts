#!/bin/bash


if [ "$#" != "1" ]
then
  echo "Wrong number of parameters"
  exit 1
fi

if [ ! -f "$1" ]
then
  echo "The parameter is not a file"
  exit 1
fi


FILE="$1"
CONCAT_FILE="file.txt"

while IFS='' read -r line || [[ -n "$line" ]]
do
  filename=${line##*/} 
  echo "$filename" >> "$CONCAT_FILE"
  cat "$line" >> "$CONCAT_FILE"
done < "$FILE"


#Łączenie w jeden plików z listy, umieszczonej w pliku o zadanej nazwie (parametr wywołania skryptu. Kolejność, w jakiej pliki zostaną połączone - ściśle według listy. Treść każdego pliku powinna być poprzedzona nagłówkiem z jego nazwą. Plik wynikowy powinien mieć nazwę pliku pierwotnie zawierającego listę.


