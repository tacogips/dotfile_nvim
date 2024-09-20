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
})

cmd([[

	au FileType markdown nmap <C-]> <ESC>:ObsidianFollowLink<CR>
	au FileType markdown nmap ,j <ESC>:ObsidianQuickSwitch<CR>
	au FileType markdown nmap ,s <ESC>:ObsidianSearch<CR>
	au FileType markdown nmap ,t <ESC>:ObsidianToday<CR>
	au FileType markdown nmap ,e <ESC>:ObsidianTags<CR>
	au FileType markdown nmap ,r <ESC>:ObsidianBacklinks<CR>

]])
