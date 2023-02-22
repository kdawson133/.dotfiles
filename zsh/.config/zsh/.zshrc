#!/usr/bin/env zsh
# .zshrc
#  _       _                               __ ____ ____  
# | |     | |                             /_ |___ \___ \ 
# | | ____| | __ ___      _____  ___  _ __ | | __) |__) |
# | |/ / _` |/ _` \ \ /\ / / __|/ _ \| '_ \| ||__ <|__ < 
# |   < (_| | (_| |\ V  V /\__ \ (_) | | | | |___) |__) |
# |_|\_\__,_|\__,_| \_/\_/ |___/\___/|_| |_|_|____/____/ 
#
# https://github.com/kdawson133/
#
# @kirk133@fosstodon.org
#
# @kirk133
#
# Set Home Directory
cd $HOME
# pfetch
pfetch
# Set Cursor Style
# 0 => blinking block
# 1 => blinking block (default)
# 2 => steady block
# 3 => blinking underscore
# 4 => steady underscore
# 5 => blinking bar
# 6 => steady bar
echo -ne '\e[0 q'
preexec() {
  echo -ne '\e[0 q';
}
# Set Options
setopt histignorealldups sharehistory autocd

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Aliases
source $ZDOTDIR/scripts/aliases.zsh

# Functions
source $ZDOTDIR/scripts/functions.zsh

# Plugins
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-completions"
plug "ajeetdsouza/zoxide"
plug "thetic/extract"
plug "djui/alias-tips"
#plug "kdawson133/KirkDawson"

# RUST
if [ -d "$XDG_DATA_HOME/cargo" ] ; then
  source "$XDG_DATA_HOME/cargo/env"
fi

# Starship Prompt
eval "$(starship init zsh)"

# RBENV
eval "$(rbenv init -)"
