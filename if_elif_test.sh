#!/bin/bash
read -p "enter number" x

if  test  $x -eq 10
then
  echo "Equal to 10"
elif  test  $x  -gt  10
then
  echo "Greater than 10"
else
  echo "Less than 10"
fi
