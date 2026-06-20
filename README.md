# devbox

scripts for setting up a developer box tmux, neovim and my favorite plugins.

> NOTE!
> This is work in progress and the container images with tags in the range v0.0.x is mostly for setting up the github workflow

## docker images

docker images are build for testing the scripts and for the cases when you don't want to install tools on a machine.

```bash
docker run -it ghcr.io/larsindresaeter/devbox-ubuntu-24.04:latest sh
```

let you test vim

```bash
docker run -it -v .:/home/devbox/$(basename $PWD) ghcr.io/larsindresaeter/devbox-ubuntu-24.04:latest tmux
```

let you edit the files in your directory.
Tmux is used as the starting point to take advantace of the combination of tmux and vim.

