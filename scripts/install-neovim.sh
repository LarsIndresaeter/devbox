#!/usr/bin/env bash

#set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

echo "create nvim dirs"
mkdir -p ~/.dotfiles/nvim

#chown -R $(whoami) ~/.npm
#chown -R $(whoami) ~/.dotfiles/coc

cp ${TOPLEVEL_PATH}/dotfiles/neovim/init.vim ~/.config/nvim/
cp ${TOPLEVEL_PATH}/dotfiles/plug/* ~/.config/nvim/

nvim +PlugInstall +qall

#nvim --headless +"CocUpdateSync |qall"
#nvim --headless +"CocInstall -sync coc-json|qall"
#nvim --headless +"CocInstall -sync coc-cmake|qall"
#nvim --headless +"CocInstall -sync coc-clangd|qall"
#nvim --headless +"CocInstall -sync coc-pyright|qall"
#nvim --headless +"CocInstall -sync coc-markdownlint|qall"
#nvim --headless +"CocInstall -sync coc-prettier|qall"
#nvim --headless +"CocInstall -sync coc-word|qall"
#nvim --headless +"CocInstall -sync coc-dictionary|qall"
#nvim --headless +"CocInstall -sync coc-webview|qall"
#nvim --headless +"CocInstall -sync coc-markdown-preview-enhanced|qall"
#nvim --headless +"CocInstall -sync coc-explorer|qall"
#nvim --headless +"CocInstall -sync coc-ccls|qall"

