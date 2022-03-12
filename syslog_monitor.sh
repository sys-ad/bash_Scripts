#!/bin/bash

filename=sys.log

cat /dev/null > $filename; echo "Cleaning out file.."

tail /var/log/messages > $filename          # Check the read permissions for /var/log/messages, making sure its universal.

echo "$filename contains last entries of system log"

exit 0
