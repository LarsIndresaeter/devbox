#!/usr/bin/env bash

TOPLEVEL_PATH=$( git rev-parse --show-toplevel )

echo "build docker image"
docker build -t devbox:ubuntu-22.04 -f ${TOPLEVEL_PATH}/scripts/dockerfiles/ubuntu-22.04/Dockerfile ${TOPLEVEL_PATH}
docker build -t devbox:ubuntu-24.04 -f ${TOPLEVEL_PATH}/scripts/dockerfiles/ubuntu-24.04/Dockerfile ${TOPLEVEL_PATH}
docker build -t devbox:ubuntu-26.04 -f ${TOPLEVEL_PATH}/scripts/dockerfiles/ubuntu-26.04/Dockerfile ${TOPLEVEL_PATH}

