#!/bin/bash

kat1=`readlink -f $1`
kat2=`readlink -f $2`

if [ -d $kat1 ]; then
    for file in $kat1/*; do
        file $file
        ln -s $file $kat2/${file##*/}_ln
    done
fi
