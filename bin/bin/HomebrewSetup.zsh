#!/bin/zsh
# Setup script for a new macos install
#
echo "Starting setup..."
# Install xcode CLI
xcode-select --install
# Check if homebrew is installed, install if required
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Update homebrew recipes
brew update
# Package list
PACKAGES=(
    bat
    cmatrix
    coreutils
    exa
    fd
    glow
    neovim
    node
    procs
    python@3.11
    readline
    restic
    ripgrep
    speedtest-cli
    starship
    stow
    tldr
    tmux
    vifm
    zoxide
)
echo "Installing packages..."
brew install ${PACKAGES[@]}
# Cleanup
echo "Cleaning up..."
brew cleanup
# Python packages
echo "Installing Python packages..."
PYTHON_PACKAGES=(
    virtualenv
    virtualenvwrapper
    mkdocs
    mkdocs-material
    mkdocs-material-extensions
    mkdocs-roamlinks-plugin
)
sudo pip install ${PYTHON_PACKAGES[@]}
# Ruby Packages
ruby-install ruby 2.7.7
echo "Installing ruby gems..."
RUBY_GEMS=(
    bundler
    jekyll
    rake
    json
)
sudo gem install ${RUBY_GEMS[@]}
# Cask list
CASKS=(
    alacritty
    cleanmymak
    darktable
    discord
    firefox
    freac
    gimp
    google-chrome
    inkscape
    iterm2
    karabiner-elements
    kindle
    lagrange
    mark-text
    moom
    musicbrainz-picard
    namechanger
    nextcloud
    obs
    ocenaudio
    plex-media-player
    plexamp
    raycast
    readdle-spark
    roon
    rsyncosx
    skim
    sublime-merge
    sublime-text
    the-unarchiver
    tidal
    vlc
    vscodium
    wezterm
    whatsapp
    xld
    youtube-downloader
)
echo "Installing cask apps..."
brew install --cask ${CASKS[@]}
# Configuring OS
echo "Configuring OS..."
echo "Configuring OS..."
# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0
# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# Complete
echo "Setup completed!!!" 


