#!/bin/sh
export RESTIC_PASSWORD=
export TERM=linux
clear
echo '*** Rebuild Repo Index ***'
restic -r /restic/repo rebuild-index
echo
echo '++++++++++++++++++++'
echo '+ Rebuild Complete +'
echo '++++++++++++++++++++'