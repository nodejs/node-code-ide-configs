#!/usr/bin/env bash

#
# Build the docker devcontainer by pulling build artifacts from a prior devcontainer.  This should be much faster
#

set -euo pipefail
shopt -s inherit_errexit

__dirname="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$__dirname"

docker build -t cspotcode/node-devcontainer:ubuntu-base --file ./Dockerfile.ubuntu-base .
docker build -t cspotcode/node-devcontainer:prior .
