#!/bin/bash

#reading data from the user
read -p 'Enter a : ' a
read -p 'Enter b : ' b

if(($a == "true" & $b == "true" ))
then
    echo Both are true.
else
    echo Both are not true.
fi

if(($a == 10 || $b == 20 ))
then
    echo Atleast one of them is true.
else
    echo None of them is true.
fi

if(( ! $a == 40  ))
then
    echo a is the not eual to 40
else
     echo a is equal to 40
 fi

