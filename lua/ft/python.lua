local cmd = vim.cmd

cmd([[
	autocmd FileType python     noremap .t <ESC>:TestFile<CR>
]])
