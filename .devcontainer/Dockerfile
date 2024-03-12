# Pull git checkout and build artifacts from previous build
FROM cspotcode/node-devcontainer:prior as prior

# Configure an Ubuntu-based dev environment
FROM cspotcode/node-devcontainer:ubuntu-base

# Copy worktree
COPY --chown=build:build --from=prior /workspaces/node-prior /workspaces/node

# Rebuild with the latest origin/master
RUN git reset
RUN git fetch
RUN git rebase
RUN ./configure && make -j4

WORKDIR /workspaces
RUN mv /workspaces/node /workspaces/node-prior
WORKDIR /workspaces/node-prior
