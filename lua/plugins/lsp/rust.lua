local name = "rust_analyzer"
require("lspconfig")[name].setup({
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				overrideCommand = {
					"cargo",
					"clippy",
					"--workspace",
					"--message-format=json",
					"--all-targets",
					"--all-features",
				},
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
return name
