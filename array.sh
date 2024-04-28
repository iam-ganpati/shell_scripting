#!/usr/bin/bash
# Arrays in BASH Shell
# These are Shell Specific, since bash is very popular, it is considered here
ARRAY=(10 20 30 40 50 60 70 "Infosys" "Limited")

# To print the first element
echo -n "The first element is: "
echo $ARRAY
# OR
echo -n "The first element is: "
echo ${ARRAY}

# To display all the elements at once #
echo -n "The array is (in * form): "
echo ${ARRAY[*]}
# OR
echo -n "The array is (in @ form): "
echo ${ARRAY[@]}

# Find the length of an array
echo "Length of the array is "${#ARRAY[*]}

# Find a particular element
echo "Second Element is ${ARRAY[1]}"

# Find the length of an element
echo "Length of Second Element is: "${#ARRAY[1]} 
