local cmd = vim.cmd

cmd([[
	autocmd FileType julia nmap .f <ESC>:JuliaFormatterFormat<CR>
	autocmd FileType julia nmap .r <ESC>:lua require('dairi_run').run(true)<CR>

]])
