local cmd = vim.cmd

cmd([[
	autocmd BufNewFile,BufRead *.zon set filetype=zig

	au FileType zig nmap .b <ESC>:Zig build<CR>
	au FileType zig nmap .t <ESC>:Zig task test<CR>
	au FileType zig nmap .r <ESC>:Zig run<CR>
]])
