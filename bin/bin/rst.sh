#!/bin/sh
export RESTIC_PASSWORD=
export TERM=linux
if [ -z $1]; then
        echo 'usage: restore.sh [snapshot]'
        exit
fi
now=$(date)
clear
echo "*** Restoring snapshot $2 of Repo $1 ***"
echo $now
restic -r /restic/repo restore $1 --target /home/ktdawson/tmp