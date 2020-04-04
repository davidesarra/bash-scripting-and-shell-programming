#!/bin/bash

# Exercise 1
# Write a shell script that renames all files in the current directory that end
# in ".jpg" to begin with today's date in the following format: YYYY­MM­DD. For
# example, if a picture of my cat was in the current directory and today was
# October 31, 2016 it would change name from "mycat.jpg" to
# "2016­10­31­mycat.jpg".

shopt -s nullglob

DATE=$(date +"%Y%m%d")
PICTURE_PATHS=$(echo *.jpg)

for PICTURE_PATH in $PICTURE_PATHS
do
    mv $PICTURE_PATH "${DATE}${PICTURE_PATH}"
done
