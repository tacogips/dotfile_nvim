require("cereb").setup({})

local cmd = vim.cmd

cmd([[
	au FileType * nmap ,p <ESC>:CerebCurrentLineMd<CR>
	au FileType * imap ,p <ESC>:CerebCurrentLineMd<CR>
	au FileType * vmap ,p :CerebSelMd<CR>
	au FileType * nmap ,; :CerebPageMd<CR>
	au FileType * imap ,; :CerebPageMd<CR>

]])
