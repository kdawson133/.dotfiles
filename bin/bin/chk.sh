#!/bin/sh
export RESTIC_PASSWORD=
export TERM=linux
clear
echo '*** Repo Check ***'
restic -r /restic/repo check
echo
echo '++++++++++++++++++'
echo '+ Check Complete +'
echo '++++++++++++++++++'