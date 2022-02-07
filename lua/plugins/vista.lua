local g = vim.g
local cmd = vim.cmd

cmd([[
let g:vista_executive_for = {
  \ 'typescript.tsx': 'lcn'
  \ }
	]])

local kmap = require("utils.keymap")
kmap.n("<Space>t", ":Vista!!<CR>")
