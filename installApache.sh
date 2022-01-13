#!/bin/bash

# Installs and runs HTTPD on linux system
# Usage: ./thisscript.sh

yum install -y httpd
systemctl enable httpd.service
systemctl start httpd.service
