#!/usr/bin/env bash

set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

PARAM="$1"

#echo "install-tool ${PARAM}"

if [ "${PARAM}" == "tmux" ]
then

	if command -v tmux &> /dev/null; then
	    echo "tmux is installed."
	else
	    echo "install tmux"
	    echo "run this script as root or use sudo"
	    apt-get install -y tmux
	fi

	echo "copy tmux config"
    cp ${TOPLEVEL_PATH}/config/tmux/.tmux.conf ~/.tmux.conf
elif [ "${PARAM}" == "vim" ]
then
	if command -v vim &> /dev/null; then
	    echo "vim is installed."
	else
	    echo "install vim"
	    echo "run this script as root or use sudo"
	    apt-get install -y vim
	fi
elif [ "${PARAM}" == "neovim" ]
then

	if command -v nvim &> /dev/null; then
	    echo "nvim is installed."
	else
	    echo "install nvim"
	    echo "run this script as root or use sudo"

	    snap install nvim --classic
    fi


	if command -v node &> /dev/null; then
	    snap install node --classic --channel=24/stable
	    npm install -g neovim
	    npm install coc-explorer --legacy-peer-deps

	    chown -R $(whoami) ~/.npm
	    chown -R $(whoami) ~/.config/coc

	    mkdir -p ~/.config/nvim
	fi
elif [ "${PARAM}" == "dependencies" ]
then
    echo "install dependencies"
	echo "run this script as root or use sudo"
    apt-get install -y curl
    apt-get install -y exuberant-ctags
    apt-get install -y ccls
    apt-get install -y llvm
    apt-get install -y clang
    apt-get install -y clangd-12
    apt-get install -y clang-format
fi

