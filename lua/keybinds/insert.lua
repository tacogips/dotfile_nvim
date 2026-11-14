local kmap = require("utils.keymap")

kmap.i("<C-d>", "<Delete>")
kmap.i("<C-h>", "<Bs>")
kmap.i("<C-f>", "<Right>")
kmap.i("<C-b>", "<Left>")

kmap.i("kj", "<ESC><ESC>")
kmap.i("<C-v>", "<C-R>+") -- paste the register

-- turn off the IME mode certainly
kmap.i("<ESC>", "<ESC>:set iminsert=0<CR>")

kmap.i("<C-j>", "<nop>") -- paste the register
