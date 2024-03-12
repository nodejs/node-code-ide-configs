VSCode lets you describe how to run within a dockerized dev environment.

This configuration leverages that feature to quickly give you:

- a fully-functional node dev environment
- a pre-populated build cache.  `make -j4` should take about 2mins the first time, not an hour

## How to use

1. Clone `node` to `<node checkout directory>`
2. Clone this branch somewhere, perhaps `<node checkout directory>/.node-code-ide-configs`
3. Symlink or copy these configs into your `<node checkout directory>`
4. Launch VSCode into this devcontainer.  The buttons to click are beyond the scope of this README.  VSCode's docs explain this.  The command is named "Open folder in container..."
5. Within VSCode's integrated terminal (which is running inside the devcontainer) run `./.devcontainer/copy-build-artifacts.sh`
6. Try it out:

```shell
# delete node binary
rm node out/Release/node
# rebuild
make -j4
# run it
./node
```

## How to build the image from scratch (slow)

```
./.devcontainer/build-from-scratch.sh
```

## How to build the image from a previously-built image (fast)

```
./.devcontainer/build-from-prior.sh
```
