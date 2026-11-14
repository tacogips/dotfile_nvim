local g = vim.g
local o = vim.o
local cmd = vim.cmd

o.clipboard = "unnamedplus"

o.autochdir = true -- change workind dir as opening files

o.wildmenu = true -- emphasize the command completions
o.wildmode = "list:full" -- longest match
o.history = 2000
o.errorbells = false
o.visualbell = true
o.title = true
o.undofile = false
o.backup = false
o.swapfile = false

o.shortmess = "atI"
o.showmatch = true
o.number = true
o.cursorline = true
o.termguicolors = true

-- tab
--o.expandtab = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 0

--put underline at current line
o.cursorline = true

-- reload if the opening file change
o.autoread = true

--- search
o.wrapscan = true
o.ignorecase = true
o.smartcase = true
o.magic = true

--
g.hybrid_custom_term_colors = 1
-- Remove this line if using the default palette.
g.hybrid_reduced_contrast = 1

g.python_host_prog = "/usr/bin/python"
g.python3_host_prog = "/usr/bin/python3"

-- set colorscheme
cmd([[colorscheme iceberg]])

cmd([[syntax on]])

cmd([[iabbrev todo TODO]])

-- remove trailing space on save
cmd([[
	autocmd BufWritePre * :%s/\s\+$//ge
]])

--syntax on
--set nu
--set autoindent
--set ic
--set hls
--set lbr
