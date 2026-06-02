#!/bin/bash
# NOTE: Install Fonts
OS=$(uname)
if [[ $OS == 'Darwin' ]]; then
  find . -type f -name "*.ttf" -exec sudo cp {} ~/Library/Fonts \;
  find . -type f -name "*.otf" -exec sudo cp {} ~/Library/Fonts \;
elif [[ $OS == 'Linux' ]]; then
  find . -type f -name "*.ttf" -exec sudo cp {} ~/.local/share/fonts \;
  find . -type f -name "*.otf" -exec sudo cp {} ~/.local/share/fonts \;
fi
