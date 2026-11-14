local cmd = vim.cmd

cmd([[
	autocmd FileType json noremap .f <ESC>:ALEFix<CR>
]])
