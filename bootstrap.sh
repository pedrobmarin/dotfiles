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
sudo apt-get install -y gnome-terminal
##
dconf load /org/gnome/terminal/legacy/profiles:/ < .dconf
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
