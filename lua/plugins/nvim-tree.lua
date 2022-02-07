require("nvim-tree").setup({
	--update_cwd = true,

	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
})

local kmap = require("utils.keymap")
kmap.n("<Space>e", ":<C-u>NvimTreeFindFileToggle<Cr>")
kmap.n("<Space>d", ":<C-u>NvimTreeFindFileToggle<Cr>")
