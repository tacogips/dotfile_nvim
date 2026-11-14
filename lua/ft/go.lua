local cmd = vim.cmd
local g = vim.g

cmd([[
	au FileType go nmap .r <ESC>:GoRun<CR>
	au FileType go nmap .b <ESC>:GoBuild<CR>
	au FileType go nmap .t <ESC>:GoTest<CR>
	au FileType go nmap .l <ESC>:GoLint<CR>
	au FileType go nmap .v <ESC>:GoVet<CR>
]])

cmd([[
	autocmd FileType go :match goErr /\<err\>/
	autocmd FileType go :highlight goErr cterm=bold ctermfg=214
]])

g.go_fmt_autosave = 0 --use ale
