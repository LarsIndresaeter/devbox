#!/usr/bin/env bash

set -ex

sudo snap install nvim --classic
sudo snap install node --classic

echo "install npm packages"
sudo npm install -g neovim

