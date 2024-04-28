#1. Write a script users.sh that will calculate the total number of users currently logged in. 
#If the user count is lesser than 10, print "Free". Otherwise, print "Crowded".

#!/bin/bash
user_count=$(who | wc -l)
if [ $user_count -lt 10 ];  # here space should be there after [ and bdfore]
then
echo "free"
else
echo "crowded"
fi


