#!/bin/bash

# Exercise 8
# Modify the previous script to accept an unlimited number of files and
# directories as arguments. Hint: You'll want to use a special variable.

for INPUT_PATH in $@
do
    if [ -d $INPUT_PATH ]
    then
        DESCRIPTION="a directory"
    elif [ -f $INPUT_PATH ]
    then
        DESCRIPTION="a regular file"
    else
        DESCRIPTION="a non-regular file"
    fi

    echo "Path $INPUT_PATH is $DESCRIPTION"

    ls -l $INPUT_PATH
done
