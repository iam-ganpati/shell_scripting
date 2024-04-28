#!/bin/bash
i=0

while [[ $i -le 5 ]]
do
  echo "Number: $i"
  ((i++))
  if [[ $i -eq 4 ]]; 
  then
    break
  fi
done

echo 'All Done!'