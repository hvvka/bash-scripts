#!/bin/bash

IGNORE=${1}

# -n : check for non-null/non-zero string variable
# -z : the opposite
function query_plot () {
    if [[ -z "${IGNORE}" ]]; then
    	echo "var is not set"
    else
    	echo "is"
    fi
}

query_plot
