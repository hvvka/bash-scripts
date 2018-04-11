#!/bin/bash

filesToModify=$(find $1 -type f -perm -u+x -exec ls -al {} \; | sort -k 5 -nr | sed 's/ \+/\t/g' | cut -f 9)

counter=1
for i in $filesToModify
do
mv $i $i.$counter
counter=$((counter + 1))
done
