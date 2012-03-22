#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 argument"
  exit 1
fi
echo 'bar!'
echo "arg: $1"
exit 0
