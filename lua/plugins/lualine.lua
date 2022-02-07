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
		lualine_b = { "filename" },
		lualine_c = {},
		lualine_x = { "encoding", "fileformat" },
		lualine_y = { "progress", "location" },
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
