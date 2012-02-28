#!/bin/bash

set -e
source init.inc

REV=$1

main() {
    setup $REV

    echo "running tests..."
    label "no args gives help"
    [ ! -z "$(./simple.sh | grep "Usage")" ] || flunk "Didn't get expected help with missing arg!"
    pass

    label "display argument"
    [ ! -z "$(./simple.sh arg1 | grep "arg1")" ] || flunk "Didn't see arg in output!"
    pass

    cleanup
}

main
