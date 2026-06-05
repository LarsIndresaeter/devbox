#!/usr/bin/env bash

set -ex

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

cp ${TOPLEVEL_PATH}/tmux/.tmux.conf ~/.tmux.conf

mkdir -p ~/.config/nvim
cp ${TOPLEVEL_PATH}/nvim/init.vim ~/.config/nvim/
