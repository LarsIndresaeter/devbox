#!/usr/bin/env bash

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

print_usage()
{
    echo "bash copy-configs.sh <params>" 
    echo ""
    echo "params:"
    echo "               -h : print usage"
    echo "               -c : install configs vim, neovim and tmux"
    echo "        -p <tool> : install vim plugins for tool <vim,neovim,tmux>"
    echo "        -r <tool> : remove tool and plugins <vim,neovim,tmux>"
    echo "               -b : build docker images"
    echo "               -d : run devox"
}

copy-configs()
{
  bash ${TOPLEVEL_PATH}/scripts/copy-configs.sh "$1"
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
    #docker build -t devbox:ubuntu-24.04 -f ${TOPLEVEL_PATH}/dockerfiles/ubuntu-24.04/Dockerfile ${TOPLEVEL_PATH}
    #docker build -t devbox:ubuntu-26.04 -f ${TOPLEVEL_PATH}/dockerfiles/ubuntu-26.04/Dockerfile ${TOPLEVEL_PATH}
}

while getopts "cp:r:dbah" opt; do
  case $opt in
    a)
      copy-configs
      install-plugin "vim"
      install-plugin "neovim"
      exit 0
      ;;
    c)
      copy-configs
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

