#!/bin/sh
export RESTIC_PASSWORD=
export TERM=linux
now=$(date)
clear
echo "*** Mounting Repo ***"
echo $now
restic -r /restic/repo mount /home/ktdawson/restic