#!/bin/bash

set -e

mkdir /tmp/devops-test || echo "Directory has already exist"

cd /tmp/devops-test || {
    echo "unable to enter into directory"
    exit 1
}

touch file.txt

echo "File created successfully"
