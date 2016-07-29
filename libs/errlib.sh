#!/usr/bin/env bash
function DEBUG() {
  [ "$_DEBUG" == "on" ] && $@ || :
}

function err() { #@USAGE: err "@ERROR: My error message"
    printf "\n%s\n%s\n%s\n\n"                                   \
    "error: Line ${BASH_LINENO[0]} in function ${FUNCNAME[1]} " \
    "which is in the file ${BASH_SOURCE[1]}"                    \
    "error: Message was: $@"
}
