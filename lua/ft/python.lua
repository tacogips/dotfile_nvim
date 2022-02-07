local cmd = vim.cmd

cmd([[
	autocmd FileType python     noremap .f <ESC>:ALEFix<CR>
	autocmd FileType python     noremap .l <ESC>:ALELint<CR>
	autocmd FileType python     noremap .t <ESC>:TestFile<CR>
]])
