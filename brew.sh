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
brew install openssh
brew install gnupg
brew install pinentry-mac

# utils
brew install starship
brew install bat
brew install jq
brew install fd
brew install ripgrep
brew install fzf

# dev
brew install cmake
brew install sqlite
brew install kubernetes-cli
brew install awscli
brew install go
brew install node
brew install mise
brew install oven-sh/bun/bun
brew install pnpm
brew install colima
brew install docker
brew install docker-compose
brew install httpie
brew install git-delta
brew install k6

# zsh extensions
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# Remove outdated versions from the cellar.
brew cleanup
