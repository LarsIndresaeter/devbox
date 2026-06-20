FROM ubuntu:22.04

RUN apt-get update && apt-get install -y git curl

RUN mkdir -p /home/devbox
COPY ./ /home/devbox/

RUN cd /home/devbox; bash install-tools.sh -a 
RUN rm -fr /home/devbox

WORKDIR /home/ubuntu

