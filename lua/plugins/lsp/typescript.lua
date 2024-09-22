local lsp_util = require("plugins.lsp.lsp_util")
local nvim_lsp = require("lspconfig")
local name = "ts_ls"

lsp_util:setup_lsp(name, {
	root_dir = nvim_lsp.util.root_pattern("package.json"),
})
