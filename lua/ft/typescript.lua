local cmd = vim.cmd

cmd([[
	autocmd FileType javascript noremap .f <ESC>:ALEFix<CR>
	autocmd FileType javascript noremap .l <ESC>:ALELint<CR>
	
	autocmd FileType typescript noremap .f <ESC>:ALEFix<CR>
	autocmd FileType typescript noremap .l <ESC>:ALELint<CR>
	autocmd FileType typescript inoremap  <C-Space>   <C-x><C-o>
	
	autocmd FileType typescript.tsx noremap .f <ESC>:ALEFix<CR>

	autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
]])
