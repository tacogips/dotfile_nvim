local cmd = vim.cmd

vim.opt.conceallevel = 1
require("obsidian").setup({
	workspaces = {
		{
			name = "main",
			path = "~/ob_vault",
		},
	},
	daily_notes = {
		folder = "daily",
	},
	follow_url_func = function(url)
		vim.fn.jobstart({ "firefox", url }) -- Mac OS
	end,

	note_id_func = function(title)
		local prefix = ""
		if title ~= nil then
			-- If title is given, transform it into valid file name.
			prefix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
		else
			-- If title is nil, just add 4 random uppercase letters to the prefix.
			for _ = 1, 4 do
				prefix = prefix .. string.char(math.random(65, 90))
			end
		end
		return prefix .. "-" .. tostring(os.time())
	end,
})

cmd([[

	au FileType markdown nmap <C-]> <ESC>:ObsidianFollowLink<CR>
	au FileType markdown nmap ,j <ESC>:ObsidianQuickSwitch<CR>
	au FileType markdown nmap ,s <ESC>:ObsidianSearch<CR>
	au FileType markdown nmap ,t <ESC>:ObsidianToday<CR>
	au FileType markdown nmap ,` <ESC>:ObsidianTags<CR>
	au FileType markdown nmap ,r <ESC>:ObsidianBacklinks<CR>
	au FileType markdown nmap ,o <ESC>:ObsidianOpen<CR>

]])
