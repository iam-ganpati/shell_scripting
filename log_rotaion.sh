#!/bin/bash

LOG_DIR="/path/to/logs"
DAYS_TO_KEEP=7

# Find and delete logs older than DAYS_TO_KEEP
find $LOG_DIR -type f -name "*.log" -mtime +$DAYS_TO_KEEP -exec rm -f {} \;

# Compress current log files
find $LOG_DIR -type f -name "*.log" -exec gzip {} \;

# Verify if log rotation was successful
if [ $? -eq 0 ]; then
    echo "Log rotation successful"
else
    echo "Log rotation failed"
fi
