# IntelliJ Setup Toturial

> In this toturial, I use CLion. But I think it will also works in WebStorm or IntelliJ which supports Makefile.

1. Follow [nodejs/node/BUILDING.md](https://github.com/nodejs/node/blob/main/BUILDING.md) to setup environment and build a project before we start CLion.

    for example:

   ```shell
    git clone https://github.com/nodejs/node.git node
    cd node
    ./configure --debug
    make -j4
   ```

2. Open CLion.
3. In popup, click 'OK'
4. Open 'Settings/Build, Execution, Development/Makefile'
   1. Change 'Build directory' from '.' to './out'
   2. Change 'Commands' in 'Pre-configuration...' to '../configure --debug'
   3. Use your own build options, like '-j32' or '-j4' depends your device.
5. Waiting for 'Updating indexes' done

You can see full steps video here:
<https://www.youtube.com/watch?v=0YCDRS0AdXM>

In some case, you will need **alias python to python3** because some tools in nodejs use python instead of python3 by default. You can use `venv` or `apt install python-is-python3`(on Ubuntu).

## References

<https://github.com/nodejs/node-code-ide-configs/issues/9>
