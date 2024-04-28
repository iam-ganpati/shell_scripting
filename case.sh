#!/bin/bash
read -p "enter number:" num
case $num in
0) echo "The number is zero";;
10) echo "The number is ten";;
100) echo "The number is hundred";;
*) echo "No match is found"
esac
echo "Out of the case statement"
