#!/bin/bash

# Check disk usage
echo "Disk Usage:"
df -h

# Check memory usage
echo "Memory Usage:"
free -h

# Check CPU load
echo "CPU Load:"
uptime

# Verify if the health check was successful
if [ $? -eq 0 ]; then
    echo "System health check successful"
else
    echo "System health check failed"
fi
