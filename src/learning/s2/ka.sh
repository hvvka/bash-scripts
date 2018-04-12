#!/bin/bash

while fileToCreate='' read -r line;
do
        touch $1/$line
done < "$2"
