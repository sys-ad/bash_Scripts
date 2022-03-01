#!/bin/bash

if [ $# -ne 1 ]    # only takes one argument
then
  echo "Usage: `basename $0` filename"
  exit 71
fi

if [ ! -e "$1" ]
then
  echo "File \""$1"\" does not exist."
  exit 72
fi

inum=`ls -i | grep $1 | awk {$!
