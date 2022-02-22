require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "iceberg",
		component_separators = { left = "", right = "|" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {},
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {},
		lualine_c = { { "filename", path = 2 } },
		lualine_x = { "encoding", "fileformat" },
		lualine_y = { "location" },
		lualine_z = { "filetype", "branch", "diff", "diagnostics" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
