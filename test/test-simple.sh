#!/bin/bash

source init.inc

trap teardown EXIT # guarantee fixture teardown

REV=${1:-}
SCRIPT='./simple.sh'

main() {
    setup $REV

    discreet_echo 'testing simple.sh...\n'

    label no args gives help
    assert [ ! -z \'$($SCRIPT | grep Usage)\' ] # NB: escaped '

    label display argument
    assert [ ! -z \'$($SCRIPT arg1 | grep arg1)\' ] # NB: escaped '
}

main
