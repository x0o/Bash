#!/usr/bin/env bash

function err() { #@USAGE: err "What am i doing"
    printf "\n%s\n" "#################################################################"
    printf "%s" "error: Line ${BASH_LINENO[0]} in function ${FUNCNAME[1]} "
    printf "%s\n" "which is in the file ${BASH_SOURCE[1]}"
    printf "%s\n" "error: Message was: $@"
    printf "%s\n\n" "#################################################################"
}