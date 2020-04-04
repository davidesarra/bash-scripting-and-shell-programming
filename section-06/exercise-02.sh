#!/bin/bash

# Exercise 2
# Write a script that renames files based on the file extension. The script
# should prompt the user for a file extension. Next, it should ask the user
# what prefix to prepend to the file name(s). By default the prefix should be
# the current date in YYYY­MM­DD format. So, if the user simply presses enter the
# date will be used. Otherwise, whatever the user entered will be used as the
# prefix. Next, it should display the original file name and the new name of
# the file. Finally, it should rename the file.

shopt -s nullglob

read -p "Type extension: " EXTENSION
read -p "Type prefix: " PREFIX

if [ -z $PREFIX ]
then
    PREFIX=$(date +"%Y%m%d")
fi

MATCHING_PATHS=*$EXTENSION

for MATCHING_PATH in $MATCHING_PATHS
do
    mv $MATCHING_PATH "${PREFIX}${MATCHING_PATH}"
done
