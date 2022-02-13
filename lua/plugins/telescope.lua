local actions = require("telescope.actions")

require("telescope").load_extension("aerial")
require("telescope").setup({
	defaults = {
		prompt_prefix = " ❯ ",
		--initial_mode = "insert",
		sorting_strategy = "descending",
		layout_config = {
			prompt_position = "bottom",
		},
		mappings = {
			i = {
				["<ESC>"] = actions.close,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<TAB>"] = actions.toggle_selection + actions.move_selection_next,
				["<C-s>"] = actions.send_selected_to_qflist,
				["<C-q>"] = actions.send_to_qflist,
			},
		},
	},
	extensions = {
		aerial = {
			show_nesting = true,
		},

		fzf = {
			fuzzy = true,
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- "smart_case" | "ignore_case" | "respect_case"
		},
	},
})

--local A = vim.api
--
--_G.Telescope = setmetatable({}, {
--    __index = function(_, k)
--        if vim.bo.filetype == 'NvimTree' then
--            A.nvim_command('wincmd l')
--        end
--        return require('telescope.builtin')[k]
--    end,
--})
--
---- Ctrl-p = fuzzy finder
--K.n('<C-P>', '<CMD>lua Telescope.find_files({ hidden = true })<CR>')
--
---- Get :help at the speed of light
--K.n('<leader>H', '<CMD>lua Telescope.help_tags()<CR>')
--
---- Fuzzy find active buffers
--K.n("'b", '<CMD>lua Telescope.buffers()<CR>')
--
---- Search for string
--K.n("'r", '<CMD>lua Telescope.live_grep()<CR>')
--
---- Fuzzy find changed files in git
--K.n("'c", '<CMD>lua Telescope.git_status()<CR>')
--
---- Fuzzy find history buffers
---- U.map('n', "'i", "<CMD>lua __telescope_open('oldfiles')<CR>")

-- ===  keybinding =================
local kmap = require("utils.keymap")

--kmap.n(",.", "<CMD>lua require'telescope.builtin'.find_files{}<Cr>")
kmap.n(",.", "<CMD>lua require'telescope.builtin'.git_status{}<Cr>")
kmap.n(",c", "<CMD>lua require'telescope.builtin'.git_commits{}<Cr>")
kmap.n(",,", "<CMD>:Telescope oldfiles<Cr>")
kmap.n(",b", "<CMD>lua require'telescope.builtin'.buffers{}<CR>")
kmap.n(",f", "<CMD>lua require'telescope.builtin'.git_files{}<Cr>")
kmap.n(",g", "<CMD>lua require'telescope.builtin'.live_grep{}<Cr>")
kmap.n(",l", "<CMD>lua require'telescope.builtin'.git_branches{}<Cr>")
kmap.n(",m", "<CMD>lua require'telescope.builtin'.marks{}<Cr>")
kmap.n(",h", "<CMD>lua require'telescope.builtin'.command_history{}<Cr>")
kmap.n(",k", "<CMD>lua require'telescope.builtin'.keymaps{}<Cr>")
kmap.n(",z", "<CMD>lua require'telescope.builtin'.lsp_references{}<Cr>")
kmap.n(",x", "<CMD>lua require'telescope.builtin'.lsp_implementations{}<Cr>")
