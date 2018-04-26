#!/bin/bash

# Uruchom skrypt `fakaping.sh`, wszystkie errory zawierające 
# "permission denied" (bez względu na wielkość liter) wypisz 
# na konsolę i do pliku denied.log.
# Wyniki powinny być unikalne.

grep_data/fakaping.sh 2>&2 | sort -u | grep -i "permission denied" | tee denied.log
