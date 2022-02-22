#!/bin/bash

BACKUPFILE=backup-$(date +%m-%d-%Y)
archive=${1:-$BACKUPFILE}

tar cvf - `find . mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backedup in archive \"$archive.tar.gz\"."
