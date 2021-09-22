#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulas.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
brew install coreutils
brew install bash

# must have
brew install git
brew install wget --with-iri
brew install curl
brew install imagemagick --with-webp

# utils
brew install starship
brew install bat
brew install jq
brew install fd

# dev
brew install cmake
brew install sqlite
brew install kubernetes-cli
brew install aws-iam-authenticator
brew install go
brew install node
brew install nvm
brew install yarn

# Remove outdated versions from the cellar.
brew cleanup

# This is where brew stores its binary symlinks
local binroot="$(brew --prefix)/bin"

# set bash from homebrew as default shell
if [[ "$(type -P $binroot/bash)" && "$(cat /etc/shells | grep -q "$binroot/bash")" ]]; then
    echo "Adding $binroot/bash to the list of acceptable shells"
    echo "$binroot/bash" | sudo tee -a /etc/shells >/dev/null
    echo "Making $binroot/bash your default shell"
    sudo chsh -s "$binroot/bash" "$USER" >/dev/null 2>&1
    echo "Please exit and restart all your shells."
fi
