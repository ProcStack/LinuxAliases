#!/bin/bash
# This is more of a stable version saver.
# You should look into SVNs and CVSs for proper file versioning.
# Or Snapshot for time based backups on Linux. 

### backupWork Info ###
# Reads *localPath*/work.txt for list of files to backup
# Example work.txt ->
# index.htm
# interface.js
# math.js

# Requires folder - backups
# Copies file to - backups/*fileName*.ext.bk#

while IFS='' read -r line || [[ -n "$line" ]]; do
	bkFind=`ls backups/ | grep -c $line.bk`
	from=$PWD/$line
	echo $from
	echo "to"
	dest="$PWD/backups/$line.bk$((bkFind+1))"
	echo $dest
	cp $from $dest
	echo "----------------"
done < "$1"
