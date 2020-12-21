#!/bin/bash
# put all the tmm files into local target folder
# copy sh and txt files into a separate folder.
# create a folder named fmerge_files
# to run use ./fmerge.sh fmergefiles.txt f
target="/Users/deepaka/GitBucket/fmerge/i18n"
i=0;
if [ $# -ne 3 ]; then
    while read line
	do
	    locale=$line
	    files=($target/*.sql_$locale.tmm)
	    if [ -f "${files[0]}" ];
	    then
	    	echo "Merging $locale files"
	    	find "${target}" -type f -name "*.sql_$locale.tmm" -exec cat {} + > "/Users/deepaka/GitBucket/fmerge/fmerge_files/$2tmmodmsg_092000_$locale.sql";
	    	echo "Created file: $2tmmodmsg_092000_$locale.sql"
	    	i=$((i+1))
	    fi
	done < $1

	echo "Total $i file(s) created after merging."
fi