# IntelliJ Setup Tutorial

> In this tutorial, I use CLion. But I think it will also works in WebStorm or IntelliJ which supports Makefile.

1. Follow [nodejs/node/BUILDING.md](https://github.com/nodejs/node/blob/main/BUILDING.md) to setup environment and build a project before we start CLion.

   for example:

   ```shell
    git clone https://github.com/nodejs/node.git node
    cd node
    ./configure --debug
    make -j8
   ```

   make sure you have ran compilation successfully before next step.

2. Open CLion.
3. In popup, click 'OK'
4. Open 'Settings/Build, Execution, Development/Makefile'
   1. Change 'Commands' in 'Pre-configuration...' to './configure --debug -C'
   2. Use your own build options, like '-j32' or '-j4' depends your device.
5. Waiting for 'Updating indexes' done

## References

<https://github.com/nodejs/node-code-ide-configs/issues/9>
