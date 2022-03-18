#!/bin/bash

# brainstorm: using xargs as a pipeline and copying, or using find to locate required files and then copy to desired dir..

E_ARG=66

if [ -z "$1" ]; then
echo "Usage: `basename $0` <dir/to/copy>"
exit E_ARG
fi

sudo find "$1" -type f -exec cp {} . \;

echo -n "Files copied"

exit 0

# using xargs,
# ls . | xargs -i -t cp ./{} "$1"
