#!/bin/bash

set -e
source init.inc

REV=$1
SCRIPT='./simple.sh'

main() {
    setup $REV

    echo "running tests..."
    label no args gives help
    assert [ ! -z \'$($SCRIPT | grep Usage)\' ] # NB: escaped '

    label display argument
    assert [ ! -z \'$($SCRIPT arg1 | grep arg1)\' ] # NB: escaped '

    teardown
}

main
