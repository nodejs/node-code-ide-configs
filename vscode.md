# Set up VSCode

1. In Node.js working directory, run `./configure -C` (if building with ninja, run `./configure --ninja -C`).
  1. This creates the `compile_commands.json` file that clangd requires for indexing. Re-run this tool every time you pull in (or make) significant changes (in particular: adding, moving, or removing files).
1. Install VSCode extensions:
  1. [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) (by Microsoft)
  1. [clangd](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd) (by LLVM)
1. Configure settings. See the example `settings.json` below for inspiration.
  1. Note that there are `~/.config/Code/User/settings.json` for system-wide config and `./.vscode/settings.json` for project-specific settings. Choose wisely which setting goes where.
  1. on Windows, the paths are `%AppData%\Code\User\settings.json` and `.\code\settings.json`, respectively.

**Notes and gotchas:**

clangd sometimes crashes (e.g. when you keep making changes quicker than it can index them, it sometimes gets confused). VSCode will give up on restarting it if this happens too frequently. In that case, hit `F1` (or `Ctrl+Shift+P`), type "reload", and select "Developer: Reload Window" to reload VSCode.

Example `settings.json`:

```json
{
  "clangd.arguments": [
    "-header-insertion=never"  // More annoying than helpful
  ],
  "clangd.onConfigChanged": "restart",
  // Let clangd take care of these features.
  "C_Cpp.autocomplete": "disabled",
  "C_Cpp.errorSquiggles": "disabled",
  "C_Cpp.intelliSenseEngine": "disabled"
}
```

If you want to use VSCode's "build tasks" feature to build from the IDE (default shortcut: `Ctrl+Shift+B`), set up a task to your liking. See the example in [`.vscode/`](./.vscode/README.md) for inspiration.

See also how to setup VSCode for V8 and Chromium:
- https://v8.dev/docs/ide-setup
- https://chromium.googlesource.com/chromium/src/+/master/docs/vscode.md
