#!/usr/bin/env bash

function err() { #@USAGE: err "What am i doing"
    printf "\n%s\n%s%s\n%s\n%s\n\n"                                     \
    "#################################################################" \
    "error: Line ${BASH_LINENO[0]} in function ${FUNCNAME[1]} "         \
    "which is in the file ${BASH_SOURCE[1]}"                            \
    "error: Message was: $@"                                            \
    "#################################################################"
}
