#!/bin/bash
# Mon Apr 29 05:42:15 UTC 2024
# Revision-001
# variables

path=/root
days=15
depth=1
run=0

#check if the dir is present
if [ ! -d $path ]
then
        echo "directory does not exist: $path"
        exit 1
fi

# create the directory
if [ ! -d $path/archive ]
then
        mkdir $path/archive
fi

#find the list of the file larger than 20 mb
for i in `find $path -maxdepth $depth -type f -size +20M`
do
if [ $run -eq 0 ]
then
        echo "[$(date)] archiving $i ==> $path/archive"
        gzip $i || exit 1
        mv $i.gz $path/archive || exit 1
fi
done