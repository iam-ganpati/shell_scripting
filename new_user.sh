# id "$username" &>/dev/null runs the id command and redirects any output or error messages to /dev/null, effectively making the command silent.

#!/bin/bash 
username="newuser" 
 
if id "$username" &>/dev/null; then 
 echo "User $username already exists." 
else 
 useradd -m "$username" 
 echo "User $username created." 
fi
