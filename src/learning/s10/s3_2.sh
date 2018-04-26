#!/bin/bash

# Uruchom skrypt `fakaping.sh` i wszystkie unikalne wyniki 
# zapisz do pliku all.log i na konsolę.

data/fakaping.sh 2>&1 | sort -u | tee all.log
