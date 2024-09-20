vim.cmd([[packadd packer.nvim]])

require("packer").startup(function()
	use("wbthomason/packer.nvim")

	-- ======= telescope ==============================
	use({
		{
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/plenary.nvim" } },
			config = function()
				require("plugins.telescope")
			end,
		},

		{
			"nvim-telescope/telescope-fzf-native.nvim",
			after = "telescope.nvim",
			run = "make",
			config = function()
				require("telescope").load_extension("fzf")
			end,
		},
		{
			"nvim-telescope/telescope-symbols.nvim",
			after = "telescope.nvim",
		},
	})

	-- ======= syntax ===========================
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("plugins.treesitter")
		end,
	})

	use({
		"IndianBoy42/tree-sitter-just",
		config = function()
			require("tree-sitter-just").setup({})
		end,
	})
	-- ======= build in LSP ===========================

	use("neovim/nvim-lspconfig")
	use("nvim-lua/lsp_extensions.nvim")

	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls")
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})

	use({
		"j-hui/fidget.nvim",
		tag = "legacy",
		config = function()
			require("plugins.fidget")
		end,
	})

	--==== obsidian ================
	use({
		"epwalsh/obsidian.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("plugins.obsidian")
		end,
	})

	--==== toml ================
	use("cespare/vim-toml")

	--==== go ================
	use({ "fatih/vim-go", run = ":GoUpdateBinaries" })

	-- ===== status line ======================================
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("plugins.lualine")
		end,
	})

	--  === markdown ===
	use({
		"kannokanno/previm",

		config = function()
			require("plugins.previm")
		end,
	})

	--  === mermaid ===
	use("mracos/mermaid.vim")

	-- ==== tab =====================
	use({
		"stevearc/aerial.nvim",

		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("plugins.aerial")
		end,
	})

	-- editorconfig
	use("editorconfig/editorconfig-vim")

	-- testing
	use("janko/vim-test")
	use("tpope/vim-dispatch")

	use("thinca/vim-openbuf")
	use("thinca/vim-quickrun")

	use("tpope/vim-endwise")
	use("tpope/vim-surround")

	-- ==== tree ==============
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			{
				"kyazdani42/nvim-web-devicons", -- optional, for file icon
			},
		},
		config = function()
			require("plugins.nvim-tree")
		end,
	})

	-- ==== jump to github ==============
	use({
		"tacogips/jump_to_github.nvim",

		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("jump_to_github").setup({
				open_browser = "firefox",
			})
		end,
	})

	use({
		"f-person/git-blame.nvim",
		config = function()
			require("plugins.git-blame")
		end,
	})

	-- ==== markdown ==============
	use("tpope/vim-markdown")

	-- ==== cpp ==============
	use("vim-jp/cpp-vim")

	-- ==== ruby ==============
	use("vim-ruby/vim-ruby")

	-- ==== tree ==============
	use("chr4/nginx.vim")

	-- ====== lint/fix ====
	use({
		"mhartington/formatter.nvim",
		config = function()
			require("plugins.formatter")
		end,
	})

	-- === svelt ==============================
	use("evanleck/vim-svelte")

	-- ====== browse js ====
	--use({ "tacogips/browsejs.nvim", run = ":UpdateRemoteuseins" })

	use("w0ng/vim-hybrid")

	use("dart-lang/dart-vim-plugin")

	--" ==== rust ===========================================
	use("rust-lang/rust.vim")
	use({
		"simrat39/rust-tools.nvim",
		config = function()
			require("plugins.rust-tools")
		end,
	})

	use({
		"saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("crates")
		end,
	})

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("plugins.toggleterm")
		end,
	})

	use({
		--"NTBBloodbath/zig-tools.nvim",
		"tacogips/zig-tools.nvim",
		ft = "zig",
		config = function()
			require("plugins.zig-tools")
		end,
		requires = {
			{
				"akinsho/toggleterm.nvim",
				config = function()
					require("toggleterm").setup()
				end,
			},
			{
				"nvim-lua/plenary.nvim",
				module_pattern = "plenary.*",
			},
		},
	})

	-- ====== terraform ====
	use("hashivim/vim-terraform")

	-- ====== graphql ====
	use("jparise/vim-graphql")

	-- ====== processing ====
	use("sophacles/vim-processing")

	-- ====== flutter ====
	use("thosakwe/vim-flutter")

	-- ====== firestore ====
	use("delphinus/vim-firestore")

	--show color code in vim
	-- slow
	--use({ "rrethy/vim-hexokinase", run = "make hexokinase" })

	-- ====== css/postcss ====
	-- TODO(tacogips) remove
	use("alexlafroscia/postcss-syntax.vim")

	-- ====== vtl (apache veclocity template)(AWS amplify graphql tempalte) ====
	use("lepture/vim-velocity")

	-- ======= jinja2
	use("Glench/Vim-Jinja2-Syntax")

	-- ======= draw rectangle with ascii char
	use("jbyuki/venn.nvim")

	-- ======= completion and snippets ===================
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "saadparwaiz1/cmp_luasnip" },
		},
		config = function()
			require("plugins.nvim-cmp")
		end,
	})

	use({
		"L3MON4D3/LuaSnip",
		config = function()
			require("plugins.luasnip")
		end,
	})

	-- === fennel/lua ==================
	--TODO remove
	--use("mnacamura/vim-fennel-syntax")
	use({
		"rktjmp/hotpot.nvim",
		config = function()
			require("plugins.hotpot")
		end,
	})
	--use("jaawerth/fennel-nvim")
	--use("Olical/aniseed")
	--use("Olical/conjure")

	-- === nim  ==============
	use("alaviss/nim.nvim")

	-- === pest(parser generator made of rust)  ==============
	use("scowcron/vim-pest")

	-- === color scheme ==============================
	use("cocopon/iceberg.vim")
	use("folke/tokyonight.nvim")

	use({
		"tacogips/strdeco.nvim",
		requires = { { "nvim-telescope/telescope.nvim" } },
		config = function()
			require("plugins.strdeco")
		end,
	})

	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			require("plugins.hop")
		end,
	})

	-- github copilot
	use("github/copilot.vim")

	-- move lang

	use({
		"rvmelkonian/move.vim",
		config = function() end,
	})

	-- TODO use syntax of LS and remove this
	use("tomlion/vim-solidity")

	-- kdl setting file
	use("imsnif/kdl.vim")
end)

require("plugins.vim-go")
require("plugins.quickrun")
