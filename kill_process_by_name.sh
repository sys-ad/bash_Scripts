#!/bin/bash

E_BADARG=66

if test -z "$1" # returns true if string (in this case $1 argument) is an empty " " string
then
  echo "Usage: `basename $0` processes to kill"
  exit $E_BADARG
fi

