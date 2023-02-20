#!/bin/sh
export RESTIC_PASSWORD=
export TERM=linux
clear
echo '*** Pruning Repo ***'
restic -r /restic/repo prune
echo
echo '++++++++++++++++++++'
echo '+ Pruning Complete +'
echo '++++++++++++++++++++'