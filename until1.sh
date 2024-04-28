#!/bin/bash
val=5
until [ $val -gt 10 ]
do
echo "$val"
val=$(($val+1))
done
echo "until loop is getting terminated"

#The script runs until the condition [ $val -gt 10 ] becomes true. Once it evaluates to true, the loop is terminated.