local nvim_lsp = require("lspconfig")
local tbl_deep_extend = vim.tbl_deep_extend

local vim_loop = vim.loop

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

local M = {}
local additinal_config = {
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		require("aerial").on_attach(client, bufnr)

		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
		-- client.server_capabilities.semanticTokensProvider = nil
	end,

	capabilities = capabilities,
}

local function make_lsp_config(user_config)
	local original_config = user_config or {}

	local default_config = tbl_deep_extend("keep", original_config, additinal_config)
	return default_config
end

function M:setup_lsp(lsp_name, user_config)
	local config = make_lsp_config(user_config)
	nvim_lsp[lsp_name].setup(config)
end

return M
