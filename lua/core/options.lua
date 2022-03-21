local set = vim.opt
local bo = require('bufopt')

-->> Numbers <<--

-- set row numbers
set.number=true
-- show cursor pos
set.ruler=true
-- show relative numbers
set.relativenumber=false

--> Indentline <<--
-- convert tabs to spaces
set.expandtab=true
-- good auto indent
set.autoindent=true
-- auto indent
set.smartindent=true
-- insert 2 spaces for a tab
set.tabstop=2
-- another kind of stabstop
set.softtabstop=2
-- shiftwidth
set.shiftwidth=2

-->> Window <<--
--  required to keep multiple buffers open
set.hidden=true
-- make popup menu small
set.pumheight=10
-- some language servers don't like backup files
set.backup=false
set.writebackup=false
-- more space for messages
set.cmdheight=2
-- enable mouse
set.mouse='a'
-- set global clipboard
set.clipboard = 'unnamedplus'
-- split new buffers below
set.splitbelow=true
-- split new buffer to the right
set.splitright=true
-- faster completion
set.updatetime=300
-- default 1000 ms
set.timeoutlen=500
-- we support termguicolors
set.termguicolors=true

-->> Other options <<--
-- the encoding
set.encoding='utf-8'
-- encoding written to file
set.fileencoding='utf-8'
-- set lang to english
vim.cmd('language en_US.utf-8')
-- enable syntax highlighting
vim.cmd('syntax on')
-- lua syntax
-- let g:vimsyn_embed == 'lPr'
