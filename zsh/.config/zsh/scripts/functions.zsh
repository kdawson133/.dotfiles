#!/usr/bin/env zsh
# functions.zsh
#  _       _                               __ ____ ____  
# | |     | |                             /_ |___ \___ \ 
# | | ____| | __ ___      _____  ___  _ __ | | __) |__) |
# | |/ / _` |/ _` \ \ /\ / / __|/ _ \| '_ \| ||__ <|__ < 
# |   < (_| | (_| |\ V  V /\__ \ (_) | | | | |___) |__) |
# |_|\_\__,_|\__,_| \_/\_/ |___/\___/|_| |_|_|____/____/ 
#
# https://github.com/kdawson133/
#
# https://github.com/kdawson133/
#
# @kirk133@fosstodon.org
#
# @kirk133
#
# Functions
github () {
	git clone https://github.com/$1;
}
updot () {
	CURRENT_DIRIECTORY=$PWD
	DIRECTORY=$HOME/.dotfiles
	cd $DIRECTORY
	git pull
	cd $CURRENT_DIRECTORY
}
cdd () {
    CURRENT_DIRECTORY=$PWD
    DIRECTORY=$CURRENT_DIRECTORY/$1
    if [[ ! -d $DIRECTORY ]]; then
        echo 'Error:' $1 'does not exist'
    fi
    if [[ -d $DIRECTORY ]]; then
        cd $DIRECTORY
        if [[ -d .git ]]; then
            git pull 
        fi
    fi
}
