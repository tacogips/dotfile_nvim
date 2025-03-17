local kmap = require("utils.keymap")


kmap.n("<C-]>", "<Cmd>lua vim.lsp.buf.definition()<CR>")

kmap.n("<C-\\>", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
kmap.n("<C-n>", "<Cmd>lua vim.lsp.buf.hover()<CR>")
-- use ",x",",z" which calls telescope buildin.lsp instead
--kmap.n(".x", "<Cmd>lua vim.lsp.buf.implementation()<CR>")
--kmap.n(".z", "<cmd>lua vim.lsp.buf.references()<CR>")
kmap.n(".j", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
kmap.n(".e", "<cmd>lua vim.lsp.buf.rename()<CR>")
kmap.n("<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
kmap.n("<C-s>", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
kmap.n("<C-g>", "<cmd>lua vim.diagnostic.goto_next()<CR>")
kmap.n(".w", "<cmd>lua vim.diagnostic.set_loclist()<CR>")
--
--	-- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
--	-- buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
--	-- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
--	-- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
--	-- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
--end

kmap.n(".\\", ":LspRestart<CR>")
