FROM ubuntu:22.04

RUN apt-get update && apt-get install -y git curl vim neovim exuberant-ctags nodejs
RUN apt-get update && apt-get install -y tmux ccls llvm clang clangd-12 clang-format

RUN mkdir -p /home/devbox
COPY ./ /home/devbox/

RUN cd /home/devbox; bash install-tools.sh -t tmux
RUN cd /home/devbox; bash install-tools.sh -t vim
RUN cd /home/devbox; bash install-tools.sh -p neovim
RUN rm -fr /home/devbox

WORKDIR /home/ubuntu

