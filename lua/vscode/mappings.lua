vim.g.mapleader = ","
local map = vim.api.nvim_set_keymap

-- custom escape
map("i", "jk", "<ESC>", { noremap = true, silent = true })
map("i", "kj", "<ESC>", { noremap = true, silent = true })
