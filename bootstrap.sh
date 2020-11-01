#!/bin/bash

set -xe

#### base
sudo apt-get update
## git
sudo apt-get install -y git
####

#### fonts
## firacode
sudo apt-get install -y fonts-firacode
## powerline
sudo apt-get install -y fonts-powerline
####

#### terminal
## terminator
sudo apt-get install -y terminator
##
mkdir -p .config
cp -r .config/terminator ~/.config
####

#### vim
sudo apt-get install -y vim
## vundle
if [ ! -d ~/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
##
cp .vimrc ~/.
####

#### tmux
sudo apt-get install -y tmux
## tpm
if [ ! -d ~/.tmux/plugins ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
##
cp .tmux.conf ~/.
####

#### bash
cat .bashrc >> ~/.bashrc
####
