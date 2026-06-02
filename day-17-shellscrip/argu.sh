#!/bin/bash

name=$1
if [[ -z $name ]]; then
echo "hello $0"
else echo "hello $1"
fi
echo "the script name is : $0"

