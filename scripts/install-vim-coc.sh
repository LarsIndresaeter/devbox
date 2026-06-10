#!/usr/bin/env bash

set -ex

function coc-install()
{
    nvim --headless +"CocInstall -sync coc-json|qall"
    nvim --headless +"CocInstall -sync coc-cmake|qall"
    nvim --headless +"CocInstall -sync coc-clangd|qall"
    nvim --headless +"CocInstall -sync coc-pyright|qall"
    nvim --headless +"CocInstall -sync coc-markdownlint|qall"
    nvim --headless +"CocInstall -sync coc-prettier|qall"
    nvim --headless +"CocInstall -sync coc-word|qall"
    nvim --headless +"CocInstall -sync coc-dictionary|qall"
    nvim --headless +"CocInstall -sync coc-webview|qall"
    #nvim --headless +"CocInstall -sync coc-markdown-preview-enhanced|qall"
    #nvim --headless +"CocInstall -sync coc-ccls|qall"
    #nvim --headless +"CocInstall -sync coc-explorer|qall"
}

coc-install

