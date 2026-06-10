#!/usr/bin/env bash

set -ex

function install-vim-plug()
{
    mkdir -p ~/.config/nvim/plugged
    rm -fr ~/.config/nvim/plugges/

    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function copy-vim-plugins()
{
    TOPLEVEL_PATH=$( git rev-parse --show-toplevel )


    cp ${TOPLEVEL_PATH}/nvim/*.vim ~/.config/nvim/
}

function install-plugins()
{
    if [! -f ~/.local/share/nvim/site/autoload/plug.vim ]
    then
        install-vim-plug
    fi

    copy-vim-plugins

    echo ":PlugInstall"
    nvim -c ":PlugInstall!" -c ":q" -c ":q"
}

install-plugins
