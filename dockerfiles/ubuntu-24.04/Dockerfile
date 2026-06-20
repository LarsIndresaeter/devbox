FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git curl vim neovim exuberant-ctags nodejs
RUN apt-get update && apt-get install -y tmux ccls llvm clang clangd-20 clang-format

RUN useradd -ms /bin/bash devbox
WORKDIR /home/devbox

COPY --chown=devbox:devbox ./ /home/devbox/install

USER devbox

RUN cd /home/devbox/install; bash install-tools.sh -a 
RUN rm -fr /home/devbox/install

RUN vim +PlugInstall +qall

