#!/bin/bash

string="gk"
while [ $string != bye ]
do
read -p "enter string:" string
echo "the word you enter is $string"
done

# the loop will execute till you enetr the word 'bye'