#!/bin/bash

string="mysore"
test $string == "Mysore"
case $? in
0) echo "The condition is true";;
1) echo "The condition is false";;
*) echo "Unknown exit status";;
esac
echo "Out of the case statement"