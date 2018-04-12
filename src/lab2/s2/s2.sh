#!/bin/bash 

#Napisać skrypt, ktory pobierze 2 katalogi.
#W katalogu 1. zrobi dowiazania symboliczne do kazdego pod-katalogu 2.,
#a w katalogu 2. zrobi dowiazania symboliczne do kazdego pliku regularnego z 1.
#Kazde dowiazanie musi miec przyrostek "_ln".
#

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

for FILE in ${CAT2}/*; do
	
	NAME=$(basename ${FILE})
	if [[ -d ${FILE} ]]; then
		ln -s ${FILE} "${CAT1}/${NAME}_ln"
	fi

done

for FILE in ${CAT1}/*; do
	
	NAME=$(basename ${FILE})
	if [[ -f ${FILE} ]]; then
		ln -s ${FILE} "${CAT2}/${NAME}_ln"
	fi

done

