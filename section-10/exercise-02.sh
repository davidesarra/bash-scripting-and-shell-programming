#!/bin/bash -x

# Exercise 2
# Modify the previous exercise so that script continues, even if an error
# occurs. This time all three ls commands will execute.

ls .
ls this-script-does-not-exist.sh
ls . -a
