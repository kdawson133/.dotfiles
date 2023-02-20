#!/usr/bin/env zsh
# .zshenv
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
################################
# EXPORT ENVIRONMENT VARIABLES #
################################
#
# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="$HOME/.local/share/tmp"
# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export KEYTIMEOUT=1
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
# SHELL
export LC_ALL=en_AU.UTF-8
export LANG=en_AU.UTF-8
export LANGUAGE=en_AU:en
export TERM=xterm-256color
export COLORTERM=truecolor
export TERMINAL=alacritty
export EDITOR="nvim"
export VISUAL="nvim"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="ALIAS FOUND! YOU SHOULD USE: "
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
# PYTHON
export PYTHONSTARTUP="/etc/python3/pythonrc"
# RUST
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export PATH=$CARGO_HOME/bin:$PATH
# RUBY PATHS
export RBENV_ROOT="$HOME/.config/rbenv"         # RUBY
export PATH="$HOME/.config/rbenv/bin:$PATH"
export PATH="$HOME/.config/rbenv/shims:$PATH"
export GEM_HOME="$HOME/.config/gems"            # RUBY GEMS
export PATH="$HOME/.config/gems/bin:$PATH"
# PATHS TO INCLUDE
# Adds ~/bin
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
# Adds ~/.local/bin
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
# Adds /usr/local/bin
if [ -d "/usr/local/bin" ] ; then
    PATH="/usr/local/bin:$PATH"
fi
