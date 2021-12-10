#!/bin/bash
# Purpose - Create batch of txt files in a Linux directory, add argument for file name
# Author -  Michael Golo, Mauricio Gomez (PerScholas,
#               AWS re/Start RTT-18, 2021;
#               DevSecOp.michael@gmail.com, SysAd.mogomez@gmail.com
#               under GPL v2.0+)
last_batch=`ls -1 . | wc -l`
new_batch=$((last_batch + 24))
count=1
while [ $count -le $new_batch ]
do
        touch $1"-"$((count))
        ((count++))
done
