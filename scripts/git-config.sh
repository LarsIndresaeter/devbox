#!/usr/bin/env bash

git config --global diff.tool nvimdiff
git config --global difftool.cmd 'nvim -d $LOCAL $REMOTE'

git config --global merge.tool nvimdiff2
git config --global difftool2.cmd "nvim -d \$LOCAL $REMOTE \$MERGED -c '$wincmd w' -c 'wincmd J':"
