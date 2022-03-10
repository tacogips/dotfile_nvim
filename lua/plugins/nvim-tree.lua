require("nvim-tree").setup({
	--update_cwd = true,

	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
		filters = {
			dotfiles = true,
			custom = {},
		},
		git = {
			enable = true,
			ignore = true,
			timeout = 500,
		},
		actions = {
			change_dir = {
				enable = true,
				global = true,
			},
			open_file = {
				quit_on_open = false,
				resize_window = false,
			},
		},
	},
})

local kmap = require("utils.keymap")
kmap.n("<Space>e", ":<C-u>NvimTreeFindFileToggle<Cr>")
kmap.n("<Space>d", ":<C-u>NvimTreeFindFileToggle<Cr>")
