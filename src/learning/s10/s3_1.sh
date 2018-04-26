#!/bin/bash

# Z pliku yolo.csv wypisz każdy numer IP, który w pierwszym
# i drugim oktecie ma po jednej cyfrze.
# Wyniki zapisz na standardowe wyjście błędów.

cat data/yolo.csv >&2 | grep -oE '\b([0-9]{1}\.){2}[0-9]{1,3}\.[0-9]{1,3}\b'
