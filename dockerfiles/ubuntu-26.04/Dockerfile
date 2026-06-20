FROM ubuntu:26.04

RUN apt-get update && apt-get install -y git curl vim neovim exuberant-ctags nodejs
RUN apt-get update && apt-get install -y tmux llvm clang clangd-20 clang-format

RUN mkdir -p /home/devbox
COPY ./ /home/devbox/

RUN cd /home/devbox; bash install-tools.sh -a 
RUN rm -fr /home/devbox

WORKDIR /home/ubuntu

