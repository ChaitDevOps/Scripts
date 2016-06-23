#!/bin/bash

sourcedir=/Users/Maddy/Downloads
targetdir=/Users/Maddy/Downloads/backups
Date=$(date '+%y%m%d%H%M')
archive=$targetdir/archive.$Date.tar.gz
log=$targetdir/archive.$Date.log

tarit()
{
	echo "ArchiveStarted: $Date" >> $log
	find $sourcedir -maxdepth 1 -not -path '*/\.*' -type f -prune -atime +10 -print0 | xargs -0 -J % mv % $targetdir >> $log
	#find $sourcedir -maxdepth 1 -not -path '*/\.*' -type f -prune -amin -199600 -print0 | xargs -0 -J % mv % $targetdir >> $log
	tar -czvf $archive --exclude='*.gz' --exclude='*.log' $targetdir/* 1 >> $log 2>&1
	count=$(find $targetdir -type f -name "*" ! -name "*.gz" ! -name "*.log" | wc -l)
	echo "No of File being Cleaned Up: $count" >> $log
	find $targetdir -type f -name "*" ! -name "*.gz" ! -name "*.log" -print0 | xargs -0 -J % rm -r %

}

#Running Archive
tarit
