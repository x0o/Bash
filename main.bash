#!/usr/bin/env bash
#: Title        : main.bash
#: Date         : 16-10-2015
#: Author       : b1n1x <symmetric.key@gmail.com>
#: Version      : 1.0
#: Description	: Short description
#: Location     : /usr/local/bin/main
#: Options      : None

#Libraries
. libs/errlib.bash
. libs/lib.bash
. libs/libdev.bash

main() {
#TODO,
  #BEGIN func1   
  func1 || err "@ERROR: func1"

#HACK,
  #BEGIN count
  set -x
  for i in {1..10}; do
    echo $i || err "@ERROR: An error occurred at ${i}"
  done
  set +x
}

main "$@"