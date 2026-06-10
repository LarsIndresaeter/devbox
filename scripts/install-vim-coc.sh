#!/usr/bin/env bash

set -ex

function coc-install()
{
    nvim -c "CocInstall coc-explorer" -c ":q" -c ":q"
    nvim -c "CocInstall coc-json" -c ":q" -c ":q"
    nvim -c "CocInstall coc-cmake" -c ":q" -c ":q"
    nvim -c "CocInstall coc-clangd" -c ":q" -c ":q"
    nvim -c "CocInstall coc-pyright" -c ":q" -c ":q"
    nvim -c "CocInstall coc-ccls" -c ":q" -c ":q"
    nvim -c "CocInstall coc-markdownlint" -c ":q" -c ":q"
    nvim -c "CocInstall coc-prettier" -c ":q" -c ":q"
    nvim -c "CocInstall coc-word" -c ":q" -c ":q"
    nvim -c "CocInstall coc-dictionary" -c ":q" -c ":q"
    nvim -c "coc-webview" -c ":q" -c ":q"
    nvim -c "CocInstall coc-markdown-preview-enhanced" -c ":q" -c ":q"
}

coc-install

