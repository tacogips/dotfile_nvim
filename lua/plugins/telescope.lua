local actions = require("telescope.actions")
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

		frecency = {
			--db_root = "home/my_username/path/to/db_root",
			show_scores = true,
			show_unindexed = true,
			ignore_patterns = { "*.git/*", "*/tmp/*" },
			disable_devicons = false,
			workspaces = {
				--["conf"] = "/home/my_username/.config",
				--["data"] = "/home/my_username/.local/share",
				--["project"] = "/home/my_username/projects",
				--["wiki"] = "/home/my_username/wiki",
			},
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
kmap.n(
	",b",
	'<CMD>lua require("telescope").extensions.frecency.frecency({ sorter = require("telescope").extensions.fzf.native_fzf_sorter() })<Cr>'
)

kmap.n(",,", "<CMD>lua require'telescope.builtin'.git_files{}<Cr>")
kmap.n(",g", "<CMD>lua require'telescope.builtin'.live_grep{}<Cr>")
kmap.n(",.", "<CMD>lua require'telescope.builtin'.find_files{}<Cr>")
kmap.n(",l", "<CMD>lua require'telescope.builtin'.git_branches{}<Cr>")
kmap.n(",r", "<CMD>lua require'telescope.builtin'.git_status{}<Cr>")
