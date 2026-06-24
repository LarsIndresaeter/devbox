#!/usr/bin/env bash

set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

PARAM="$1"

if [ "${PARAM}" == "tmux" ]
then
    echo "remove tmux"
    rm ~/.tmux
elif [ "${PARAM}" == "vim" ]
then
    echo "remove vim"
    rm ~/.vimrc
    rm -fr ~/.vim/
elif [ "${PARAM}" == "neovim" ]
then
    echo "remove neovim"
    rm -rf ~/.dotfiles/nvim

    echo "clean coc cache"
    rm -rf ~/.dotfiles/coc/extensions

    echo "clean vim plug"
    rm -fr ~/.dotfiles/nvim/plugged
fi

