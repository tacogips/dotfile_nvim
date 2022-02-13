local lsp_util = require("plugins.lsp.lsp_util")
-- `yarn global add solidity-language-server`
local name = "solidity_ls"
lsp_util:setup_lsp(name, {})
