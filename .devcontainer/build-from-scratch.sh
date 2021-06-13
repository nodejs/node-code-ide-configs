#!/usr/bin/env bash

#
# Rebuild the docker devcontainer from a clean git checkout.  This will take a long time
#

set -euo pipefail
shopt -s inherit_errexit

__dirname="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$__dirname"
cd ..

docker build -t cspotcode/node-devcontainer:ubuntu-base --file ./.devcontainer/Dockerfile.ubuntu-base .
# TODO must manually re-tag this image as cspotcode/node-devcontainer:prior to use it in the build-from-prior script
docker build -t cspotcode/node-devcontainer:from-scratch --file ./.devcontainer/Dockerfile.from-scratch .
