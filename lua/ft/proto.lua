local cmd = vim.cmd

cmd([[
	autocmd FileType proto nmap .f <ESC>:%!clang-format -style="{AllowShortIfStatementsOnASingleLine: true, AllowShortBlocksOnASingleLine: true, AlignConsecutiveAssignments : true ,ColumnLimit: 5000 }" %<CR>
]])
