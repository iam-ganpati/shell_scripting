#!/bin/bash

echo "program name is : $0"
echo "number of the parameter: $#"

noOfParam=$#

if test $noOfParam -gt 0
then
echo "parameter list is : $*"
else
echo "no parameter passed rather then 0" 
fi
echo "end of the program"