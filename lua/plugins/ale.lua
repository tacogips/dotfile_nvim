local g = vim.g
local cmd = vim.cmd

cmd([[
let g:ale_fixers = {
			\ 'python': ['black'],
			\ 'javascript': ['prettier'],
			\ 'rust': ['rustfmt'],
			\ 'css': ['prettier'],
			\ 'typescript': ['prettier'],
			\ 'typescript.tsx': ['prettier'],
			\ 'html': ['prettier'],
			\ 'vue': ['prettier'],
			\ 'json': ['prettier'],
			\ 'terraform': ['terraform'],
			\ 'graphql': ['prettier'],
			\ 'sql': ['sqlfmt'],
			\ 'go': ['goimports'],
			\ 'proto': ['clang-format'],
			\ 'lua': ['stylua'],
			\ 'firestore': ['prettier'],
			\}
			]])

g.ale_set_loclist = 0
g.ale_lint_on_enter = 0
g.ale_lint_on_save = 0
g.ale_lint_on_text_changed = 0
g.ale_open_list = 0
g.ale_fix_on_save = 1

g.ale_python_flake8_options = "-m flake8 --max-line-length=88"
--let g:ale_javascript_prettier_options = '--trailing-comma es5'
g.ale_javascript_prettier_options = "--trailing-comma all"

g.ale_c_clangformat_options =
	'-style="{AllowShortIfStatementsOnASingleLine: true, AllowShortBlocksOnASingleLine: true, AlignConsecutiveAssignments : true ,ColumnLimit: 5000 }"'

g.ale_rust_rustfmt_options = "--edition 2018"

cmd([[let g:JuliaFormatter_options = {
        \ 'style' : 'blue',
        \ }]])

-- ===  keybinding =================
local kmap = require("utils.keymap")
kmap.n(".n", ":ALENext<CR>")
kmap.n(".p", ":ALELast<CR>")
kmap.n("<Space>l", ":let g:ale_open_list=1<CR>")
kmap.n("<Space>k", ":let g:ale_open_list=1<CR>")
