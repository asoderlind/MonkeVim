# MonkeVim

<img src="white_transparent.png" width="200" height="200" />

_Reject modern bloat, return to monke_

## Installation

Clone the repo

`git clone https://github.com/asoderlind/MonkeVim.git`

Symlink the repo folder as the nvim config folder

`ln -sf /path/to/MonkeVim /home/user/.config/nvim`

Opening nvim again will trigger a hook that installs packer.

While in nvim, run

`:PackerSync`

which installs and updates the plugins

## Plugins

### Base functionality

[plenary](https://github.com/nvim-lua/plenary.nvim) - required by many other plugins

[packer](https://github.com/wbthomason/packer.nvim) - plugin manager

### Icons

[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - nice icons

### Linting and prettierd

[null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim") - vscode-like auto-format

## To use the autoformatting capabilities of null-ls

Install ![prettierd](https://github.com/fsouza/prettierd#installation-guide)
`$ npm install -g @fsouza/prettierd`

Install ![eslint_d](https://github.com/mantoni/eslint_d.js#install)
`$ npm install -g eslint_d`
