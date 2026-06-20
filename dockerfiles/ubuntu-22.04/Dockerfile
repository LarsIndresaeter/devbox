FROM ubuntu:22.04

RUN apt-get update && apt-get install -y git curl vim neovim 

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
RUN source ~/.bashrc; nvm install --lts

RUN mkdir -p /home/devbox
COPY ./ /home/devbox/

RUN cd /home/devbox; bash install-tools.sh -t tmux
RUN cd /home/devbox; bash install-tools.sh -t vim
RUN cd /home/devbox; bash install-tools.sh -p neovim
RUN rm -fr /home/devbox

WORKDIR /home/ubuntu

