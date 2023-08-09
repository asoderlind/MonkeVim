local _, null_ls = pcall(require, "null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Set LSP auto format on buffer save
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
				vim.lsp.buf.formatting_sync()
			end,
		})
	end
end

local sources = {
	--null_ls.builtins.formatting.prettierd,
	null_ls.builtins.formatting.stylua.with({
		filetypes = { "lua" },
	}),

	null_ls.builtins.formatting.autopep8.with({
		filetypes = { "python" },
	}),

	null_ls.builtins.formatting.prettierd.with({
		filetypes = { "javascript", "typescript", "json", "markdown", "graphql" },
	}),

	null_ls.builtins.formatting.tidy.with({
		filetypes = { "html" },
	}),

	null_ls.builtins.formatting.djlint.with({
		filetypes = { "django", "htmldjango", "jinja.html" },
	}),
}

null_ls.setup({ sources = sources, on_attach = on_attach })
