#!/bin/bash
# Purpose - Script to add a user, group membership for a Linux system.
# Author - Vivek Gite, Mauricio A Gomez under GPL v2.0+
# ------------------------------------------------------------------
# Am i Root user?
if [ $(id -u) -eq 0 ]; then
        read -p "Enter username : " username
        read -s -p "Enter password : " password
        egrep "^$username" /etc/passwd >/dev/null
        if [ $? -eq 0 ]; then
                echo "$username exists!"
                exit 1
        else
                pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
                sudo useradd -m -p "$pass" "$username" -N
                [ $? -eq 0 ] && echo "User has been added to system!";
                read -p "Enter department: " department
                egrep "^$department" /etc/group >/dev/null
                if [ $? -ne 0 ]; then
                        echo "$department doesnt exist"
                        exit 1
                else
                        sudo usermod -aG "$department" "$username" && echo "User has been added to $department" department; exit 1
                fi || echo "Failed to add a user!" && exit 1
        fi
else
        echo "Only root may add a user to the system."
        exit 2
fi
