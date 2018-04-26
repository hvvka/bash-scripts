#!/bin/bash

# Znajdź unikalne zapytania typu DELETE

grep 'DELETE ' data/access_log | sort -u > unique_delete_queries.log

# sort | uniq == sort -u
# Second approach saves a process, 
# reduces the total I/O and
# number of comparisons that have to be made
