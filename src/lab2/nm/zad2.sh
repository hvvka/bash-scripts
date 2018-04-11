#!/bin/bash

#!/bin/bash

kat1=`readlink -f $1`
text=$2_ln_removal.txt

if [ -d $kat1 ]; then
    touch $text
    echo `date` >> $text
    for file in $kat1/*; do
        if [ ! -f $file ]; then
            echo ${file##*/} >> $text
        fi
    done
fi
