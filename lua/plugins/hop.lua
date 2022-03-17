require("hop").setup()

-- ====== keymap
local kmap = require("utils.keymap")
kmap.n(",k", "<cmd>lua require'hop'.hint_char1({ })<cr>")
kmap.n(",/", "<cmd>lua require'hop'.hint_patterns({ })<cr>")
