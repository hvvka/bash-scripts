#!/bin/bash

#Listowanie plików z zadanego katalogu (parametr wywołania skryptu), wraz z jego podkatalogami. Zawartość podkatalogów ma być listowana w postaci <ścieżkadostępu względem listowanego katalogu>/<nazwa pliku>. Ograniczyć liczbę zagnieżdżeń podkatalo- gów (np. do dwóch).

if [ "$#" != "1" ]
then
    echo "Wrong number of parameters"
    exit 1
fi

if [ ! -d "$1" ]
then
	echo "Parameter should be a directory!"
	exit 1
fi

DIR="$1"

find "$DIR" -maxdepth 1 -type d,f -exec ls -ld "{}" \;
