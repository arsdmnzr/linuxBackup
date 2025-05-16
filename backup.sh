#!/bin/bash


src="/home/$USER/Documents/"

destination="/home/$USER/Backups"

filename="bkup-$(date +%y-%m-%d_%H:%M:%S).tar.gz"

det_log="/home/$USER/log/backup.log"

tar -cvzf $destination/$filename $src >> $det_log 2>&1
