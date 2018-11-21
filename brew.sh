#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# must have
brew install git
brew install wget --with-iri
brew install curl
brew install imagemagick --with-webp

# utils
brew install bat
brew install jq

# dev
brew install cmake
brew install sqlite
brew install kubernetes-cli
brew install go
brew install dep
brew install node
brew install nvm
brew install yarn

# Remove outdated versions from the cellar.
brew cleanup
