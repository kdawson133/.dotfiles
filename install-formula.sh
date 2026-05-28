#!/bin/bash
#  NOTE: update the homebrew database
brew update

# NOTE: list of forlulae to install
PACKAGES=(
  neovim
  stow
  fzf
  zoxide
  starship
  bat
  eza
  ripgrep
  fd
  node
)

brew install ${PACKAGES[@]}

