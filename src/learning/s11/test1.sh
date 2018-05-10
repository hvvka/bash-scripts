#!/bin/bash

IGNORE=${1}

function query_plot () {
    if [[ -n "${IGNORE}" && -d "${IGNORE}" ]]; then
    	echo "var is set and it's a directory"
    else
    	echo "is not"
    fi
}

query_plot
