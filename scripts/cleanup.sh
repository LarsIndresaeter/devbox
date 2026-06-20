#!/usr/bin/env bash

set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

PARAM="$1"

echo "install-tool ${PARAM}"

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
    rm -rf ~/.config/nvim

    echo "clean coc cache"
    rm -rf ~/.config/coc/extensions

    echo "clean vim plug"
    rm -fr ~/.config/nvim/plugged
fi

