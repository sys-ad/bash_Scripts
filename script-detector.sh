#!/bin/bash

# What are the indicators that a file is a bash file?
# Remember, you might be traversing a directory, a file, a character...
TESTCHARS=2
HASHBANG='#!'

for file in *
do

