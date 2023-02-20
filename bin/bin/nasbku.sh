#!/bin/sh
echo 'BACKING UP ==> nas.deneb.group'
ssh -t 100 './bin/sync.sh && ./bin/bku.sh'
ssh -t titan './bin/backup.sh'
echo
echo '*** BACKUP COMPLETE ***'
