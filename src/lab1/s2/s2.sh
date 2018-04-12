#!/bin/bash

#W zadanym katalogu wszystkim plikom, ktore mozemy edytowac
#z rozszerzeniem '.hpp' i majacym jakas zawartosc
#dodac rozszerzenie '.bak', np. plik.hpp -> plik.hpp.bak

DIRECTORY=${1}

cd "${DIRECTORY}"

for FILE in $(find -type f -name "*.hpp" -perm -u+w); do
  if [[ -s ${FILE} ]]; then
    mv "${FILE}" "${FILE}.bak"
  fi
done


