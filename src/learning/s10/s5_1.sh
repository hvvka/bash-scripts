#!/bin/bash

# Z pliku yolo.csv wypisz wszystkich, których
# id jest liczbą nieparzystą.
# Wyniki zapisz na standardowe wyjście błędów.

cut -d ',' -f 1- data/yolo.csv >&2 | grep -E '^\d*[13579]\b'

# -f X- - Xth field and every field after it (ommits ones before)
# \d - any digit
# \b - a word boundary
