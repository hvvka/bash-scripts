#!/bin/bash

# Znajdź 10 unikalnych adresów IP

grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' grep_data/access_log | sort -u | head -10 > unique_ip.log

# sort | uniq == sort -u
# Second approach saves a process, 
# reduces the total I/O and
# number of comparisons that have to be made
