#!/bin/bash
# NOTE: Install Fonts
OS=$(uname)
if [[ $OS == 'Darwin' ]]; then
  sudo cp -R fonts/* /Library/Fonts/
elif [[ $OS == 'Linux' ]]; then
  sudo cp -R fonts/* /usr/share/fonts/
fi
