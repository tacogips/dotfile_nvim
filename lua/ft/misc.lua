local cmd = vim.cmd

-- keybinds
cmd([[
	autocmd FileType tsx        noremap .f <ESC>:ALEFix<CR>
	autocmd FileType html       noremap .f <ESC>:ALEFix<CR>
	autocmd FileType css        noremap .f <ESC>:ALEFix<CR>
	autocmd FileType pug        noremap .f <ESC>:ALEFix<CR>

	autocmd FileType vue        noremap .f <ESC>:ALEFix<CR>
	autocmd FileType vue        noremap .t <ESC>:ALELint<CR>

	autocmd FileType sql       noremap .f <ESC>:ALEFix<CR>


	autocmd FileType markdown nnoremap <silent> .r :<C-u>PrevimOpen<CR>
	autocmd FileType markdown nnoremap <silent> .b :<C-u>call previm#refresh()<CR>

]])

-- filetypes
cmd([[
	autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
	autocmd BufNewFile,BufRead *.dig set filetype=yaml
	autocmd BufNewFile,BufRead *.vtl set ft=velocity
	autocmd BufNewFile,BufRead nginx.conf set ft=nginx
	autocmd BufNewFile,BufRead Dockerfile* set filetype=dockerfile
]])

cmd([[
	"" :,# で自動インデントが走るのを止める
	autocmd Syntax yaml setl indentkeys-=<:> indentkeys-=0#
]])
