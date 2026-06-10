#!/usr/bin/env bash

set -ex

echo "clean coc cache"
rm -rf ~/.config/coc/extensions

echo "clean vim plug"
rm -fr ~/.config/nvim/plugged

