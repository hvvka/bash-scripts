#!/bin/bash

filesToRemove=$(find $1 -type f -name *.old)

for i in $filesToRemove
do
  rm $i
done

files=$(find $1 -type f -perm -u+w)  #find $1 -perm -u+w || find $1 -perm -g+w

for i in $files
do
  mv $i $i.old
done
