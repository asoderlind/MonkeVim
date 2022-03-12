vim.g.mapleader = ","
local map = vim.api.nvim_set_keymap

local M = {}

--- Basics

-- alternate way to save
map('n', '<C-s>', ':w<CR>', {noremap=true})

-- better tabbing
map('v', '<', '<gv', {noremap=true})
map('v', '>', '>gv', {noremap=true})

-- use alt + hjkl to resize windows
map('n', '<M-j>', ':resize +2<CR>', {noremap=true})
map('n', '<M-k>', ':resize -2<CR>', {noremap=true})
map('n', '<M-h>', ':vertical resize -2<CR>', {noremap=true})
map('n', '<M-l>', ':vertical resize +2<CR>', {noremap=true})

-- better window navigation
map('n', '<C-h>', '<C-w>h', {noremap=true})
map('n', '<C-j>', '<C-w>j', {noremap=true})
map('n', '<C-k>', '<C-w>k', {noremap=true})
map('n', '<C-l>', '<C-w>l', {noremap=true})

-- block comment
map('v', '<Leader>c', ":s/^/\\/\\/<CR>:noh<CR>", {noremap=true})
map('v', '<Leader>x', ":norm 2x<CR>", {noremap=true})

-- better splitting
map('n', '<Leader>v', ':vsplit<CR>', {noremap=true})

-- custom escape
map('i', 'jk', '<ESC>', {noremap=true, silent=true})
map('i', 'kj', '<ESC>', {noremap=true, silent=true})

-- closing
map('n', '<Leader>x' ,':bp<bar>sp<bar>bn<bar>bd<CR>', {noremap=true})

-- quicker editing and sourcing of init.lua
map('n', '<Leader>ve' ,':tabnew /home/axel/.config/nvim/init.lua<CR>', {noremap=true})
map('n', '<Leader>vs' ,':source /home/axel/.config/nvim/init.lua<CR>', {noremap=true})

-- compiling python
map('i', '<Leader>p', '<Esc>:w<CR>:!python %<CR>', {noremap=true})
map('n', '<Leader>p', ':w<CR>:!python %<CR>', {noremap=true})

-- autoclose
-- map('i', '"', '""<left>', {noremap=true})
-- map('i', "'", "''<left>", {noremap=true})
-- map('i', '(', '()<left>', {noremap=true})
-- map('i', '[', '[]<left>', {noremap=true})
-- map('i', '{̈́', '{}<left>', {noremap=true})
map('i', '{<CR>', '{<CR>}<ESC>O', {noremap=true})
map('i', '[<CR>', '[<CR>]<ESC>O', {noremap=true})
map('i', '(<CR>', '(<CR>)<ESC>O', {noremap=true})

M.nvimtree = function()
   map('n', '<C-n>',     ':NvimTreeToggle<CR>',   {noremap=true})
   map('n', '<Leader>r', ':NvimTreeRefresh<CR>',  {noremap=true})
   map('n', '<Leader>n', ':NvimTreeFindFile<CR>', {noremap=true})
   map('n', '<Leader>t', ':NvimTreeFocus<CR>',    {noremap=true})
end

M.telescope = function()
   map("n", '<leader>fb', ":Telescope buffers <CR>",   {noremap=true})
   map("n", '<leader>ff', ":Telescope find_files hidden=true<CR>",   {noremap=true})
   map("n", '<leader>cm', ":Telescope git_commits <CR>",   {noremap=true})
   map("n", '<leader>gs', ":Telescope git_status <CR>",   {noremap=true})
   map("n", '<leader>fh', ":Telescope help_tags <CR>",   {noremap=true})
   map("n", '<leader>fw', ":Telescope live_grep <CR>",   {noremap=true})
   map("n", '<leader>fo', ":Telescope oldfiles <CR>",   {noremap=true})
   map("n", '<leader>th', ":Telescope themes <CR>",   {noremap=true})
end

M.bufferline = function()
   map("n", "<TAB>", ":BufferLineCycleNext <CR>", {noremap=true})
   map("n", "<S-Tab>", ":BufferLineCyclePrev <CR>", {noremap=true})
end

return M
