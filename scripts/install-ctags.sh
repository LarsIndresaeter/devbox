#!/usr/bin/env bash

#set -e

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

echo "copy ctags config"
cp ${TOPLEVEL_PATH}/dotfiles/ctags/.ctags ~/.ctags

