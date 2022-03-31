require("plugins.lsp.keybinds")

local rust_ls = require("plugins.lsp.rust")
local c_ls = require("plugins.lsp.c")
local julia_ls = require("plugins.lsp.julia")
local go_ls = require("plugins.lsp.go")
local python_ls = require("plugins.lsp.python")
local typescript_lsp = require("plugins.lsp.typescript")
local lua_lsp = require("plugins.lsp.lua")
local svelte_lsp = require("plugins.lsp.svelte")

local nvim_lsp = require("lspconfig")
local servers = {
	rust_ls,
	c_ls,
	julia_ls,
	go_ls,
	python_ls,
	typescript_lsp,
	lua_lsp,
	svelte_lsp,
}

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup({
		flags = {
			debounce_text_changes = 150,
		},

		capabilities = capabilities,
	})
end
