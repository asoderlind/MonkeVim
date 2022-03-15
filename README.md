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

### Aesthetics

[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - nice icons

[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - syntax highlighting

### Linting and prettierd

[null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim") - vscode-like auto-format

### Files

[nvim-tree](https://github.com/kyazdani42/nvim-tree.lua) - file navigation

[telescope](https://github.com/nvim-telescope/telescope.nvim) - amazing grep

[bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - buffer tabs

### Git

[git-signs](https://github.com/lewis6991/gitsigns.nvim) - git stuff

### Language Server Stuff

[nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer) - nice server installer

[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - lsp config

[lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)

### Autocomplete and snippets

[friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

[LuaSnip](https://github.com/L3MON4D3/LuaSnip)

[cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)

[cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)

[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)

[cmp-buffer](https://github.com/hrsh7th/cmp-buffer)

### Others

[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

[nvim-base16](https://github.com/NvChad/nvim-base16.lua)

## To use the autoformatting capabilities of null-ls

Install ![prettierd](https://github.com/fsouza/prettierd#installation-guide)
`$ npm install -g @fsouza/prettierd`

Install ![eslint_d](https://github.com/mantoni/eslint_d.js#install)
`$ npm install -g eslint_d`
