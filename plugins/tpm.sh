#!/bin/bash

set -xe

sudo apt-get install -y git

if [ ! -d ~/.tmux/plugins ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
