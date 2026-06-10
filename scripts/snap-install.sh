#!/usr/bin/env bash

set -ex

sudo snap install nvim --classic
sudo snap install node --classic

echo "install npm packages"
sudo npm install -g neovim

sudo npm install coc-explorer --legacy-peer-deps

sudo chown -R $(whoami) ~/.npm
sudo chown -R $(whoami) ~/.config/coc

cd ~/.config/coc/extensions/
npm install coc-explorer --legacy-peer-deps

