#!/bin/bash

# Exercise 7
# Modify the previous script so that it accepts the file or directory name as
# an argument instead of prompting the user to enter it.

INPUT_PATH=$1

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
