vim.cmd([[colorscheme gruvbox]])
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]])
