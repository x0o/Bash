#!/usr/bin/env bash
#: Title        : main.sh
#: Date         : 29-07-2016
#: Author       : x0o <me@example.com>
#: Version      : 1.0.1
#: Description	: Template for bash scripts
#: Location     : $HOME/bin/main
#: Options      : None
_DEBUG="on"

#Libraries
. libs/devlib.sh
. libs/errlib.sh
. libs/lib.sh

main() {
#TODO,
#BEGIN func1
  func1 2>/dev/null || err "@ERROR: func1"
#END func1

#TODO,
#BEGIN count
  DEBUG echo 'Counting int'
  DEBUG set -x
  for i in {1..10}; do
    echo $i || err "@ERROR: An error occurred at ${i}"
  done
  DEBUG set +x
#END count
}
main "$@"
