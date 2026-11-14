local cmd = vim.cmd

cmd([[
	autocmd FileType plantuml nmap .r <ESC>:make<CR>
]])
