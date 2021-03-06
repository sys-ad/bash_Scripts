#!/bin/bash

# Dont consider this a secure script. Requires sudo access. 
SUCCESS=0
echo -n "Enter user name: "
read USER_NAME

# check if username exist
grep -q "$USER_NAME" /etc/passwd
if [ z -ne $? ]
then
  echo "User $USER_NAME does not exist"
  exit 70   # Does not exist error, 70
fi

# Set password
echo -n "Enter new password: "
read NEW__PW
echo "$NEW_PW" | passwd --stdin "$USER_NAME"


echo "User '$USER_NAME' has been set.

exit 0
#
