#!/bin/bash

CAT=$1
new_file_name=file.txt

touch $new_file_name
cd $CAT
FILES=$(find . -type f)

for file in $FILES
do
  ls $file | sed 's/..//'>> ../$new_file_name
  cat $file >> ../$new_file_name
done
