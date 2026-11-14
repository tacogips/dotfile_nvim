local lsp_util = require("plugins.lsp.lsp_util")
local name = "rust_analyzer"

lsp_util:setup_lsp(name, {
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				--overrideCommand = {
				--	"cargo",
				--	"clippy",
				--	"--workspace",
				--	"--message-format=json",
				--	"--all-targets",
				--	"--all-features",
				--},
			},
			procMacro = {
				enable = true,
			},
			cargo = {
				-- noDefaultFeatures = true,
				-- features = {"onpremise"}
				-- features = {"cloud"}
				-- features = {"mongo"}
				-- features = {"test-using-sa"}
			},
		},
	},
})
