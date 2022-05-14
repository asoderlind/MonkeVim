local _, null_ls = pcall(require, "null-ls")

local sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.eslint_d,
}

null_ls.setup({
    sources = sources,
    on_attach = function(client)
      if client.resolved_capabilities.document_formatting then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
      end
    end,
})
