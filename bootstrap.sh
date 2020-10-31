#!/bin/bash

set -xe

# base
sudo apt-get update
sudo apt-get install -y \
		wget \
		git \
		tree \
		curl \
        htop

# fonts
sudo apt-get install -y cabextract
mkdir -p /tmp/fonts
wget -O /tmp/fonts/PowerPointViewer.exe https://archive.org/download/PowerPointViewer_201801/PowerPointViewer.exe
cabextract -L -F ppviewer.cab /tmp/fonts/PowerPointViewer.exe -d /tmp/fonts
cabextract -L /tmp/fonts/ppviewer.cab -d /tmp/fonts
if [ ! -d ~/.fonts ]; then
  mkdir ~/.fonts
fi
cp /tmp/fonts/*.tt* ~/.fonts
sudo apt-get remove cabextract

# terminal
sudo apt-get install -y terminator
mkdir -p .config
cp -r .config/terminator ~/.config

# vim
sudo apt-get install -y vim
if [ ! -d ~/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
cp .vimrc ~/.

# tmux
sudo apt-get install -y tmux
if [ ! -d ~/.tmux/plugins ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
cp .tmux.conf ~/.

# bash
cat .bashrc >> ~/.bashrc
