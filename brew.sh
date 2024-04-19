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
brew install wget
brew install curl
brew install imagemagick

# security
brew install gnupg
brew install pinentry-mac

# utils
brew install starship
brew install bat
brew install jq
brew install fd
brew install ripgrep

# dev
brew install cmake
brew install sqlite
brew install kubernetes-cli
brew install aws-iam-authenticator
brew install go
brew install node
brew install nvm
brew install yarn
brew install pnpm
brew install colima
brew install httpie

# Remove outdated versions from the cellar.
brew cleanup
