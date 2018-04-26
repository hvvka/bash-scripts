#!/bin/bash

# Z pliku yolo.csv wypisz wszystkich pracowników rządu,
# którzy mają parzysty numer id.

cut -d ',' -f 1- grep_data/yolo.csv | grep -E '^\d*[02468]\b' | grep -E '\b[A-Za-z0-9]+\@[a-zA-Z0-9.-]*(gov)[a-zA-Z0-9.-]*\b' 

# -f X- - Xth field and every field after it (ommits ones before)
# \d - any digit
# \b - a word boundary
