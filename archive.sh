#!/bin/bash

# archive.sh - a script to "archive" files you don't need anymore
# Usage: ./archive [filename]

# This script makes a new folder in the directory that you're currently in called "Old".
# If it already exists, it does nothing.
# It makes a copy of the file specified, adds OLD onto the end, and moves it into the Old folder.
# If there is already a file called [filename]OLD, it will rename it to [filename]OldX,
# where X is a number starting at 2. If [filename]OLD2 already exists, it would be 3, etc.

FILENAME=$1;
TIME=$(date +"%H:%M")
DAY=$(date +"%m_%d_%Y")

# If Old/ doesn't exist, make it!
if [ ! -d "Old" ]; then
   mkdir Old
fi

if [ ! -d "Old/$DAY" ]; then
   mkdir Old/$DAY
fi

cp $FILENAME $FILENAME-$TIME
mv "$FILENAME-$TIME" "Old/$DAY"
echo "File archived"




