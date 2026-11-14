return {
	extension = {
		-- extension = filetype
		-- example:
		["png"] = [[png]],
		["jpeg"] = [[jpeg]],
		["jpg"] = [[jpeg]],
	},
	file_name = {},
	shebang = {
		-- Shebangs are supported as well. Currently we provide
		-- sh, bash, zsh, python, perl with different prefixes like
		-- /usr/bin, /bin/, /usr/bin/env, /bin/env
		-- shebang = filetype
		-- example:
		["/usr/bin/node"] = "javascript",
	},
}
