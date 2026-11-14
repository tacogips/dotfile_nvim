local cmd = vim.cmd

cmd([[
	autocmd FileType julia nmap .f <ESC>:JuliaFormatterFormat<CR>
]])
