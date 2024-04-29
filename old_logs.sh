#!/bin/bash

logs_path=/var/log
archive_logs=/var/log/archive
log_file=/var/log/execution.log
run=0

log_message (){
        echo "[$(date)] $1" >> "$log_file"
}

if [ ! -d $archive_logs ]
then
    mkdir -p $archive_logs
fi

#find the list of the file which is older than 15 days
for i in `find "$logs_path" -type f -mtime +15 -name "*.log"`
do
if [ $run -eq 0 ]
then
        log_message "[$(date)] Archiving $i ==> $archive_logs"
        echo "[$(date)] archiving $i ==> $archive_logs" >> "$log_file"
        gzip $i >> "$log_file" 2>&1 || { log_message "Error: Failed to gzip $i"; exit 1; } 
        mv $i.gz $archive_logs >> "$log_file" 2>&1 || { log_message "Error: Failed to move $i.gz to $archive_logs"; exit 1; }
fi
done

log_message "Script execution completed successfully"