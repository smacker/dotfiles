#!/usr/bin/env bash

# Bootstraps new mac

source ./macos.sh
source ./brew.sh
source ./cask.sh

# Create links

ln -s $(pwd)/.bashrc $HOME/.bashrc
ln -s $(pwd)/.bash_profile $HOME/.bash_profile
ln -s $(pwd)/.bash_prompt $HOME/.bash_prompt
ln -s $(pwd)/.aliases $HOME/.aliases
ln -s $(pwd)/.exports $HOME/.exports

ln -s $(pwd)/.gitconfig $HOME/.gitconfig
ln -s $(pwd)/.gitignore $HOME/.gitignore

mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/backup
ln -s $(pwd)/.vimrc $HOME/.vimrc
ln -s $(pwd)/.vim/CSApprox.txt $HOME/.vim/CSApprox.txt
ln -s $(pwd)/.vim/after $HOME/.vim/after
ln -s $(pwd)/.vim/autoload $HOME/.vim/autoload
ln -s $(pwd)/.vim/colors $HOME/.vim/colors
ln -s $(pwd)/.vim/plugin $HOME/.vim/plugin
ln -s $(pwd)/.vim/tags $HOME/.vim/tags

mkdir -p $HOME/.gnupg
ln -s $(pwd)/.gnupg/gpg-agent.conf $HOME/.gnupg/gpg-agent.conf

ln -s $(pwd)/bat $HOME/.config/bat
ln -s $(pwd)/ghostty $HOME/.config/ghostty

mkdir -p $HOME/.git
ln -s $(pwd)/delta/catppuccin.gitconfig $HOME/.git/delta-catppuccin.gitconfig

