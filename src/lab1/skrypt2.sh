#!/bin/bash


DIRECTORY=${1}

cd "${DIRECTORY}"

#find -name "*.cpp" 

for FILE in $(find -name "*.cpp"); do
  mv "${FILE}" "${FILE}.bak"
done


