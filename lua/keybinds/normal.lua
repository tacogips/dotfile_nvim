local kmap = require("utils.keymap")

kmap.n("Q", "<Nop>") -- disable ex mode
kmap.n("gQ", "<Nop>") -- disable ex mode

--- search
kmap.n("<Esc><Esc>", ":set nohlsearch<CR>") -- clear search hilight

--  open in finder(on mac)
kmap.n(",o", ":<C-u>!open %<CR>")

kmap.n("j", "gj")
kmap.n("k", "gk")
kmap.n("+", "g;") -- go to N older position in change list
kmap.n("J", "gJ") -- join lines

kmap.n("bp", ":bprevious<CR>")
kmap.n("bn", ":bnext<CR>")

kmap.n("<Space>.", ":<C-u>so $MYVIMRC<CR>") -- reload vim
kmap.n(".vr", ':%y\\|@"<CR>') -- yank all buffer

kmap.n(",w", ":write<CR>") -- save
kmap.n("<Space>w", ":write<CR>") -- save

--  copy current file path to clipboard
kmap.n(".y", ":<C-u>!pwd <BAR> xclip -sel c<CR>")

--  open current dir (on mac)
kmap.n(".u", ":<C-u>!pwd <BAR> xargs open <CR>")

kmap.n("<Space><Space>", "i <Esc><Right>") -- insert a space
kmap.n("<Space>j", "i<CR><ESC>") -- insert a new line

kmap.n("<Space>x", "xi<Space><ESC>") -- delete a char without packing

-- === buffer operation ==============
kmap.n("<Space>n", ":bn!<CR>")
kmap.n("<Space>b", ":bp!<CR>")

kmap.n("<Space>o", ":on!<CR>")
kmap.n("<Space>q", ":q!<CR>")
kmap.n("<Space>1", ":qa!<CR>")

-- reopen
kmap.n(",e", ":e! %<CR>")
kmap.n(",y", ":tabo<CR>")

kmap.n("<C-l>", "<C-w>l")
kmap.n("<C-h>", "<C-w>h")
kmap.n("<C-k>", "<C-w>k")
kmap.n("<C-j>", "<C-w>j")
--- split
kmap.n("<C-e>", ":vsplit<CR>")

-- count line
kmap.n("cl", ":%s/.//gn<CR>")
