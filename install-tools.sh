#!/usr/bin/env bash

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

print_usage()
{
    echo "bash install-tools.sh <params>" 
    echo ""
    echo "params:"
    echo "               -h : print usage"
    echo "        -t <tool> : install tool <vim,neovim,tmux>"
    echo "        -p <tool> : install vim plugins for tool <vim,neovim,tmux>"
    echo "        -r <tool> : remove tool and plugins <vim,neovim,tmux>"
    echo "               -b : build docker images"
    echo "               -d : run devox"
}

install-tool()
{
  bash ${TOPLEVEL_PATH}/scripts/install-tool.sh "$1"
}

install-plugin()
{
  bash ${TOPLEVEL_PATH}/scripts/install-plugin.sh "$1"
}

build-docker-image()
{
    echo "build docker image"
    echo "docker build -t devbox:ubuntu-22.04 -f ${TOPLEVEL_PATH}/dockerfiles/ubuntu-22.04/Dockerfile ${TOPLEVEL_PATH}"
    docker build -t devbox:ubuntu-22.04 -f ${TOPLEVEL_PATH}/dockerfiles/ubuntu-22.04/Dockerfile ${TOPLEVEL_PATH}
    docker build -t devbox:ubuntu-24.04 -f ${TOPLEVEL_PATH}/dockerfiles/ubuntu-24.04/Dockerfile ${TOPLEVEL_PATH}
}

while getopts "t:p:r:dbah" opt; do
  case $opt in
    a)
      install-tool "dependencies"
      install-tool "tmux"
      install-tool "vim"
      install-tool "neovim"
      install-plugin "vim"
      install-plugin "neovim"
      exit 0
      ;;
    t)
      install-tool "$OPTARG"
      exit 0
      ;;
    d)
      docker run -it -rm devbox:ubuntu-22.04 sh
      exit 0
      ;;
    b)
      build-docker-image
      exit 0
      ;;
    p)
      install-plugin "$OPTARG"
      exit 0
      ;;
    r)
      bash ${TOPLEVEL_PATH}/scripts/cleanup.sh "$OPTARG"
      exit 0
      ;;
    h)
      print_usage
      exit 0
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      echo ""
      echo "    -h for help menu"
      ;;
  esac
done

print_usage

