#!/usr/bin/env bash

#set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

echo "copy tmux config"
cp ${TOPLEVEL_PATH}/dotfiles/tmux/.tmux.conf ~/.tmux.conf

