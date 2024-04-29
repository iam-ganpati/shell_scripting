#!/bin/bash

logs_path=/workspaces/shell_scripting
archive_logs=/workspaces/shell_scripting/archive
run=0

if [ ! -d $archive_logs ]
then
    mkdir -p $archive_logs
fi

#find the list of the file which is older than 15 days
for i in `find "$logs_path" -type f -mtime +15 -name "*.log"`
do
if [ $run -eq 0 ]
then
        echo "[$(date)] archiving $i ==> $archive_logs"
        gzip $i || exit 1
        mv $i.gz $archive_logs || exit 1
fi
done