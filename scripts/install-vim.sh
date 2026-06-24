#!/usr/bin/env bash

#set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

echo "create vim dirs"
mkdir -p ~/.vim/autoload/
echo "copy vim files"

cp ${TOPLEVEL_PATH}/dotfiles/vim/.vimrc ~/
cp ${TOPLEVEL_PATH}/dotfiles/plug/* ~/.vim/

