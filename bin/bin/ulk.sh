#!/bin/sh
export RESTIC_PASSWORD=
export TERM=linux
now=$(date)
clear
echo '*** Unlock Repo ***'
echo $now
restic -r /restic/repo unlock --cache-dir /home/ktdawson/.cache
echo
echo '+++++++++++++++++++'
echo '+ Unlock Complete +'
echo '+++++++++++++++++++'