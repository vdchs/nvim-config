## Installation
### Install Neovim
https://github.com/neovim/neovim
### Install VSCode Neovim
https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim
### Check out config
Check out config into the nvim config directory.
For Linux that is ~/.config/nvim

## Plugins
This config uses lazy.nvim as the package manager. All other plugins are configured in a separate `lua/plugins/<plugin>.lua` file.
If you don't want to use a plugin, just delete the respective file.

## VSCode commands
`lua/plugins/vscode.lua` defines keybinds for specific VSCode commands and is only loaded when Nvim is used inside VSCode.

## Pairs well with...
[Vimium!](https://chromewebstore.google.com/detail/dbepggeogbaibhgnhhndojpepiihcmeb) (or similar Extensions for other browsers)
