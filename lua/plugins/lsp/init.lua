--- official language servers
require("plugins.lsp.keybinds")

require("plugins.lsp.rust")
require("plugins.lsp.nix")
require("plugins.lsp.c")
require("plugins.lsp.julia")
require("plugins.lsp.go")
require("plugins.lsp.python")
require("plugins.lsp.typescript")
require("plugins.lsp.typescript_deno")
require("plugins.lsp.lua")
require("plugins.lsp.svelte")
require("plugins.lsp.move")
require("plugins.lsp.solidity")
require("plugins.lsp.zig")

-- to keep rust-analyer from breaking the highlighting by tree-sitter
-- the document at :h lsp-semantic-highlight
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
	vim.api.nvim_set_hl(0, group, {})
end

--- TODO custom language servers
local move = require("plugins.lsp.move")
