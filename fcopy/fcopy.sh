#!/bin/bash
# to run use ./fcopy.sh fcopyfiles.txt
target="/Users/deepaka/GitBucket/banner_app_database/student/dbprocs/ss9"
i=0;
while read line
do
    name=$line
    echo "Copying file - $name"
    find "${target}" -name "$name" -exec cp {} /Users/deepaka/GitBucket/fcopy/fcopy_files \;    
    i=$((i+1));
done < $1

echo "Total files copied - $i"