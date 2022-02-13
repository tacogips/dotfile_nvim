local hop = require("hop")
hop.setup({
	keys = "fdjhklsagqwertyuiopzxcvbnm",
})

-- ====== keymap
local kmap = require("utils.keymap")
local directions = require("hop.hint").HintDirection

-- vim.keymap.set("", "f", function() 	hop.hint_char1({ current_line_only = true }) end, { remap = true })

kmap.nset("f", function()
	hop.hint_char1({ current_line_only = true })
end)

kmap.vset("f", function()
	hop.hint_char1({ current_line_only = true })
end)

kmap.n("r", "<cmd>lua require'hop'.hint_char1({ })<cr>")
--kmap.n(".f/", "<cmd>lua require'hop'.hint_patterns({ })<cr>")

kmap.v("r", "<cmd>lua require'hop'.hint_char1({ })<cr>")
--kmap.v(".f/", "<cmd>lua require'hop'.hint_patterns({ })<cr>")
