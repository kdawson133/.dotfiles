#     __ __ _      __      ____                                
#    / //_/(_)____/ /__   / __ \____ __      ___________  ____ 
#   / ,<  / / ___/ //_/  / / / / __ `/ | /| / / ___/ __ \/ __ \
#  / /| |/ / /  / ,<    / /_/ / /_/ /| |/ |/ (__  ) /_/ / / / /
# /_/ |_/_/_/  /_/|_|  /_____/\__,_/ |__/|__/____/\____/_/ /_/ 
#
# https://github.com/kdawson133/
#
# @kirk133
#
#!/bin/bash

rsync -avzhe --size-only --delete --progress /media/PallasShares/ /media/SeagateExpansion/backup/
