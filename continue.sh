#!/bin/bash
i=0

while [[ $i -lt 5 ]]; do
  ((i++))
  if [[ "$i" == '4' ]]; then    # here it will check the i value and skip it and will continue
    continue
  fi
  echo "Number: $i"
done

echo 'All Done!'
