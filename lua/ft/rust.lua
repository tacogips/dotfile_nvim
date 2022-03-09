local cmd = vim.cmd
local g = vim.g

cmd([[
	au FileType rust nmap .f <ESC>:Cargo fix<CR>
	au FileType rust nmap .r <ESC>:Cargo run<CR>
	au FileType rust nmap .b <ESC>:Cargo check<CR>
	au FileType rust nmap .t <ESC>:Cargo nextest run<CR>
	au FileType rust nmap .m <Cmd>lua require'rust-tools.expand_macro'.expand_macro()<CR>
]])

g.rustfmt_autosave = 0 -- use alefixer
