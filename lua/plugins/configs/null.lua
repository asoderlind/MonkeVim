local _, null_ls = pcall(require, "null-ls")

local sources = {
	--null_ls.builtins.formatting.prettierd,
	null_ls.builtins.formatting.stylua,
	null_ls.builtins.formatting.eslint_d,
	null_ls.builtins.formatting.autopep8,
	null_ls.builtins.formatting.tidy,
}

null_ls.setup({ sources = sources })
