#!/bin/bash

# archive.sh - a script to "archive" files you don't need anymore
# Usage: ./archive [filename]


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




