#!/bin/bash

set -xe

sudo apt-get update
sudo apt-get install -y git

sudo apt-get install -y fonts-firacode
sudo apt-get install -y fonts-powerline

sudo apt-get install -y gnome-terminal
dconf load /org/gnome/terminal/legacy/profiles:/ < .dconf

sudo apt-get install -y vim
if [ ! -d ~/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
cp .vimrc ~/.

sudo apt-get install -y tmux
if [ ! -d ~/.tmux/plugins ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
cp .tmux.conf ~/.

cat .bashrc >> ~/.bashrc
