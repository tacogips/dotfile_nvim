local keymap = vim.api.nvim_set_keymap
local buf_keymap = vim.api.nvim_buf_set_keymap

_M = {
	opts = {
		noremap = { noremap = true, silent = true },
	},
	n = function(key, action, silent)
		opts = { noremap = true, silent = silent or true }
		keymap("n", key, action, opts)
	end,

	i = function(key, action, silent)
		opts = { noremap = true, silent = silent or true }
		keymap("i", key, action, opts)
	end,

	v = function(key, action, silent)
		opts = { noremap = true, silent = silent or true }
		keymap("v", key, action, opts)
	end,
}

return _M
