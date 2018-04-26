#!/bin/bash

# We wszystkich plikach w katalogu `groovies` zamień ip=numer.ip
# na IP=numer.ip

grep -rlE '\bip=' data/groovies | xargs sed -i 's/\bip/IP/g'

# second approach:
# find data/groovies -type f -exec sed -i 's/\bip=\b/IP=/g' {} \;
