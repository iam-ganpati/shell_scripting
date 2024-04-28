read -p "enter a :" a
read -p "enter b :" b

add=$((a+b))
echo "the addition of the valu: $add"

sub=$((a-b))
echo "the substraction is : $sub"

mul=$((a*b))
echo "the multiplication : $mul"

div=$((a/b))
echo "Division of a and b are: "${div}

mod=$((a%b))
echo "Modulis of a and b are: "${mod}

((++a))
echo "Increment operator when applied on $a results into a :" "${a}"

((--b))
echo "Decrement operator when applied on 'b' results into b :" "${b}"
