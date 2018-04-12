#!/bin/bash

DIRECTORY=${1}

cd "${DIRECTORY}"

for FILE in $(find -name "*.cpp"); do
  mv "${FILE}" "${FILE}.bak"
done
