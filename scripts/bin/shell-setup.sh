# NOTE: This is a shell script to install all the prerequisites for my development environment on MacOS and Linux
# The list of utilities are:
# 1. zoxide
# 2. fzf
# 3. starship
# 4. eza
# 5. ripgrep
# 6. zsh
# 7. stow
# 8. Node
# 9. Node Package manger
# 10. chruby
# 11. neovim

# TODO: Detect whether running on Linux (Arch or Ubuntu) or MacOS
#
# If MacOS detect if Homebrew has been installed, if not exit with error.
#
# If Arch detect if Yay has been installed, if not exit with error.
#
# If Ubuntu detect if Linux brew has been installed, if not exit with error
#
#
# If OS is not MacOS/Arch/Ubuntu exit with error stating OS is unsupported
#
#
#
echo
echo '******************************************************'
echo '* To use this tool you must have the following tools *'
echo '* already installed                                  *'
echo '*                                                    *'
echo '* MacOS        ==> hombrew                           *'
echo '* Ubuntu Linux ==> linuxbrew                         *'
echo '* Arch Linux   ==> Yay and lsb-release               *'
echo '******************************************************'
echo

OS=$(uname)
if [[ $OS == 'Darwin' ]]; then
  if [[ ! $(which zoxide) ]]; then
    echo 'Installing ZOXIDE...'
    brew install zoxide
  fi
exit 0
elif [[ $OS == 'Linux' ]]; then
  echo 'you have Linux installed!'
  exit 0
fi

echo
echo '==> OS IS NOT SUPPORTED <=='
echo
exit 1
  
