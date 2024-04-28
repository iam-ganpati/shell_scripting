#!/bin/bash
presentdir=`pwd`

# reading the one item at a time from present directory.

for item in $presentdir/*
do
#to check if the read file is the regular file
if test -f $item 
then
nblank=`cat $item | grep -c "^$"`
echo "file $item has $nblank lines"
fi
done