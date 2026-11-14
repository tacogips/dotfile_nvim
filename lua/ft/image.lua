local cmd = vim.cmd

cmd([[
	autocmd BufNewFile,BufRead *.png setlocal filetype=png
	autocmd BufNewFile,BufRead *.jpg setlocal filetype=jpeg
	autocmd BufNewFile,BufRead *.jpeg setlocal filetype=jpeg

	au FileType png,jpeg nmap <C-]> <ESC>:!feh '%:p'<CR>

]])
