#!/usr/bin/env bash

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

bash ${TOPLEVEL_PATH}/scripts/apt-install.sh
bash ${TOPLEVEL_PATH}/scripts/snap-install.sh
bash ${TOPLEVEL_PATH}/scripts/copy-configs.sh
bash ${TOPLEVEL_PATH}/scripts/install-vim-plug.sh
bash ${TOPLEVEL_PATH}/scripts/install-vim-coc.sh
bash ${TOPLEVEL_PATH}/scripts/git-config.sh

