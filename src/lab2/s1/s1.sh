#!/bin/bash 

#Napisac skrypt, ktory przyjmuje 2 parametry - sciezki do katalogow
#Z zadanego katalogu nr 1 wypisac wszystkie pliki, wraz z informacja:
#-czy jest to katalog
#-czy jest to dowiazanie symboliczne
#-czy plik regularny
#UWAGA: upewnic sie, ze katalog nr 1 istnieje
#Nastepnie (lub rownolegle) utworzyc w katalogu nr 2 dowiazanie symboliczne
#do kazdego pliku z katalogu nr 1, dodajac suffix:_ln,
#np. magic_file.txt -> magic_file.txt_ln

if [[ "$#" != "2" ]]
then
    echo "Wrong number of parameters"
    exit 1
fi

if [[ ! -d "$1" || ! -d "$2" ]]
then
	echo "Parameters should be a directories!"
	exit 1
fi


CAT1=$(realpath ${1})
CAT2=$(realpath ${2})

for FILE in ${CAT1}/*; do

	if [[ -d ${FILE} ]]; then
	    echo "${FILE} is a directory"
	elif [[ -f ${FILE} ]]; then
 	    echo "${FILE} is a regular file"
	elif [[ -h ${FILE} ]]; then
	    echo "${FILE} is a symbolic link"
	fi

	NAME=$(basename ${FILE})
	ln -s ${FILE} "${CAT2}/${NAME}_ln"

done

