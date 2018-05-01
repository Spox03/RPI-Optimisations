#!/bin/bash
# Script : pi_backup.sh
# Purpose : Backup the entire filesystem on /media/pi/backup
if [[ -d "/media/pi/backup/" ]]
then
	echo "Commencing Backup"
	sudo rsync -avh --delete-during --delete-excluded --exclude-from="/usr/bin/rsync-exclude.txt" "/" "/media/pi/backup/" >> "rsync.log"
fi
