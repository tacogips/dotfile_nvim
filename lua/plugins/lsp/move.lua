local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

local util = require("lspconfig.util")

if not configs.move_analyzer then
	configs.move_analyzer = {
		default_config = {
			cmd = { "move-analyzer" },
			filetypes = { "move" },
			root_dir = util.root_pattern(".git", "Move.toml"),
			settings = {},
			docs = {
				description = [[ ]],
				default_config = {
					root_dir = [[root_pattern("Move.toml")]],
				},
			},
		},
	}
end

--require("lspconfig")["move_analyzer"].setup(setting)
--local nvim_lsp = require("lspconfig")
--nvim_lsp["move_analyzer"].setup(config)
lspconfig.move_analyzer.setup({})
--- custom language servers
--local move = require("plugins.lsp.move")
--require("lspconfig").move_analyzer.setup({})
