#! /bin/sh
rm ~/Logs/*.adi
cp -a '/Users/ktdawson/Library/Application Support/WSJT-X/wsjtx_log.adi' ~/Logs/log-$(date +"%Y%m%d%H%M%S").adi
