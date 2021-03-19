#!/bin/bash

if [ $# != 1 ]; then
    echo "Usage: $0 <provide shared bucket dir>"
    exit 1
fi
for entry in "$1"/*
do
  echo $'\n'
  echo "$entry"
  time ./../build/src/bin/opensmt $entry
done



