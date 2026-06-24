#!/usr/bin/env bash

git config --global diff.tool vimdiff
git config --global difftool.cmd 'vim -d $LOCAL $REMOTE'

git config --global merge.tool vimdiff2
git config --global difftool2.cmd "vim -d \$LOCAL $REMOTE \$MERGED -c '$wincmd w' -c 'wincmd J':"
