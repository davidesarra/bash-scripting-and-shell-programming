#!/bin/bash

# Exercise 2
# Modify the previous script so that it uses a logging function. Additionally
# tag each syslog message with "randomly" and include the process ID. Generate
# 3 random numbers.

function log() {
    MESSAGE=$1
    logger -i -t randomly -p user.info "${MESSAGE}"
}

for _ in {1..3}
do
    RANDOM_NUMBER=$RANDOM
    echo $RANDOM_NUMBER
    log $RANDOM_NUMBER
done
