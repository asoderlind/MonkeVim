local init_modules = {
	"core",
	"plugins",
}

if vim.g.vscode then
	for _, module in ipairs({ "vscode" }) do
		local ok, err = pcall(require, module)
		if not ok then
			error("Error loading " .. module .. "\n\n" .. err)
		end
	end
else
	for _, module in ipairs(init_modules) do
		local ok, err = pcall(require, module)
		if not ok then
			error("Error loading " .. module .. "\n\n" .. err)
		end
	end
end
