#!/usr/bin/env bash

#set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

PARAM="$1"

echo "copy tmux config"
cp ${TOPLEVEL_PATH}/config/tmux/.tmux.conf ~/.tmux.conf

echo "create vim dirs"
mkdir -p ~/.vim/

echo "create nvim dirs"
chown -R $(whoami) ~/.npm
chown -R $(whoami) ~/.config/coc

mkdir -p ~/.config/nvim

