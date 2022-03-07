#!/bin/bash


date1=$(date +%s)

#Use this arithmetic to determine elapsed time since defining date1
#let $(( $(date +%s) - $date1 ))

#While loop using timer
while [ $(( $(date +%s) - $date1 )) -lt "$1" ]; do
#Terminal timer -n won't append new line, so the echo will replace itself.
##There is also some date formatting to achieve: HH:MM:SS.
echo -ne "$(date -u --date @$(( $(date +%s) - $date1 )) +%H:%M:%S)\r"

done

cvlc -q steelbell.mp3 2>/dev/null
