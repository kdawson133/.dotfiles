#!/bin/sh
export RESTIC_PASSWORD=
export TERM=linux
now=$(date)
clear
echo '*** Archiving to Repo ***'
echo $now
restic -r /restic/repo backup /pallas
restic -r /restic/repo forget --keep-daily=7 --keep-weekly=4
echo
echo '++++++++++++++++++++++'
echo '+ Archiving Complete +'
echo '++++++++++++++++++++++'