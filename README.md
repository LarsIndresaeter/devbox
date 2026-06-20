# devbox

scripts for setting up a developer box tmux, neovim and my favorite plugins.

> NOTE!
> This is work in progress and the container images with tags in the range v0.0.x is mostly for setting up the github workflow

## docker images

docker images are build for testing the scripts and for the cases when you don't want to install tools on a machine.

```bash
docker run -it -v .:/home/ubuntu/$(basename $PWD) devbox:ubuntu-24.04 
```

