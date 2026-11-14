local cmd = vim.cmd

cmd([[
let g:quickrun_config = {
			\ 	'julia' : {
			\ 	  'command': 'julia',
			\ 	  'exec':'%c --project %s'
			\ 	},
			\ 	'typescript' : {
			\ 	  'command': 'bun',
			\ 	  'exec':'%s',
      \     'hook/cd/directory': '%S:p:h'
			\ 	}
			\	}
	]])

local kmap = require("utils.keymap")
kmap.n("<Space>r", ":QuickRun<CR>")
