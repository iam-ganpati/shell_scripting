#!/bin/bash

# set -x    # debug mode
# set -e    # exit the script when there is error
# set -o pipefail    # if any pipeline command getting failed

set -exo pipefail

# Check disk usage
echo "Disk Usage:"
df -h

# Check memory usage
echo "Memory Usage:"
free -h

# Check CPU load
echo "CPU Load:"
uptime

# processor
echo "no of processor: "
nproc


# Verify if the health check was successful
if [ $? -eq 0 ]; then
    echo "System health check successful"
else
    echo "System health check failed"
fi
