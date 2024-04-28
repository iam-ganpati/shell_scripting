#!/bin/bash

read -p "enter file name:" filename

if [ -e $filename ]
then
	echo file exist
else
	echo file not exist
fi

if [ -s $FileName ]
then
    echo The given file is not empty.
else
    echo The given file is empty.
fi

if [ -r $FileName ]
then
    echo The given file has read access.
else
    echo The given file does not has read access.
fi

if [ -w $FileName ]
then
    echo The given file has write access.
else
    echo The given file does not has write access.
fi

if [ -x $filename ]
then
	echo "its executable file"
else
	echo "its not executable file"
fi
