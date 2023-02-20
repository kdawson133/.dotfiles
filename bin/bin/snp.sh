#!/bin/sh
export RESTIC_PASSWORD=
export TERM=linux
clear
echo '*** Snapshots ***'
restic -r /restic/repo snapshots
echo
echo '++++++++++++++++++++++'

echo '+ Snapshots Complete +'

echo '++++++++++++++++++++++'