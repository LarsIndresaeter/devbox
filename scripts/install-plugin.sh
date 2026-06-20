#!/usr/bin/env bash

set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

PARAM="$1"

#echo "install-plugin ${PARAM}"

if [ "${PARAM}" == "tmux" ]
then
    cp ${TOPLEVEL_PATH}/tmux/.tmux.conf ~/.tmux.conf
elif [ "${PARAM}" == "vim" ]
then
    mkdir -p ~/.vim/autoload/
    cp ${TOPLEVEL_PATH}/config/vim/.vimrc ~/
    cp ${TOPLEVEL_PATH}/config/plugins/vim/* ~/.vim/

    #if [ ! -f ~/.vim/autoload/plug.vim ]
    #then
        #curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    #fi

    #vim +"PlugInstall | qall"
elif [ "${PARAM}" == "neovim" ]
then
    mkdir -p ~/.config/nvim/
    cp ${TOPLEVEL_PATH}/config/neovim/init.vim ~/.config/nvim/
    cp ${TOPLEVEL_PATH}/config/plugins/vim/* ~/.config/nvim/

    #if [ ! -f ~/.local/share/plug.vim ]
    #then
      #sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    #fi

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
fi

