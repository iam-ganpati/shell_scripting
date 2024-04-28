#!/bin/bash

read -p "enter value: " var
while [ $var -gt 5 ]
do
    echo $var
    var=$(($var - 1))
done