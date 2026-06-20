FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git curl vim neovim 

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
RUN source ~/.bashrc; nvm install --lts

RUN mkdir -p /home/devbox
COPY ./ /home/devbox/

RUN cd /home/devbox; bash install-tools.sh -a 
RUN rm -fr /home/devbox

WORKDIR /home/ubuntu

