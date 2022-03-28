require("strdeco").setup({

	custom_conversion = {

		custom_conv = {
			before = function()
				return "ah .."
			end,
			convert = function(line, line_no, line_count)
				if string.match(line, "^%s*$") then
					return nil
				end
				line = string.gsub(line, "python", function(s)
					return "julia"
				end)

				line = string.gsub(line, "vim", function(s)
					return "neovim"
				end)
				return line
			end,
			after = function()
				return "now."
			end,
		},

		rs_mod_list = {
			convert = function(line, line_no, line_count)
				line = string.gsub(line, "^.*%s", "")
				line = string.gsub(line, "%.rs", "")

				return "pub mod " .. line .. ";"
			end,
		},

		rs_mod_to_use = {
			convert = function(line, line_no, line_count)
				line = string.gsub(line, "^.*mod%s", "pub use ")
				line = string.gsub(line, ";", "::*;")
				return line
			end,
		},

		tail_semicolon = {
			convert = function(line, line_no, line_count)
				line = string.gsub(line, "$", ";")
				return line
			end,
		},
	},
})
