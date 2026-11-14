local lsp_util = require("plugins.lsp.lsp_util")
local nvim_lsp = require("lspconfig")

local user_home = vim.env.HOME
local name = "zls"
lsp_util:setup_lsp(name, {
	cmd = { "zls", "--config-path", user_home .. "/.config/zls/zls.json" },
	root_dir = nvim_lsp.util.root_pattern("build.zig", "zls.json", ".git"),
	filetypes = { "zig", "zon" },
})
