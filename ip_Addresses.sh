#!/bin/bash

# Checks IP addresses network connected to.

connection_type=TCP
field=2

lsof -ni | grep $connection_type | grep -v "$no_match" |
      awk '{print $9}' | cut -d : -f $field | sort | uniq |
      sed s/"^$router"//
