local nvim_lsp = require("lspconfig")
local lsp_util = require("plugins.lsp.lsp_util")

local name = "denols"
lsp_util:setup_lsp(name, {
	root_dir = nvim_lsp.util.root_pattern("deno.json"),
})
