#!/bin/bash

# set -x    # debug mode
# set -e    # exit the script when there is error
# set -o pipefail    # if any pipeline command getting failed

set -exo pipefail

read name
echo "Hi i am devops engineer and my name is $name"

nproc

free -m

$0
$$
