#!/bin/bash
###########################
#     Get Public IP       #
###########################

# Paths for binary files
WGET="/usr/bin/wget"
SED="/usr/bin/sed"

$WGET -q -O - checkip.dyndns.org|$SED -e 's/.*Current IP Address: //' -e 's/<.*$//'
