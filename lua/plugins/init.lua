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
	--use({
	--	"nvim-treesitter/nvim-treesitter",
	--	run = ":TSUpdate",
	--})
	-- ======= build in LSP ===========================

	use("neovim/nvim-lspconfig")
	use("nvim-lua/lsp_extensions.nvim")

	--==== plant uml ================
	use("aklt/plantuml-syntax")

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

	-- ==== tab =====================
	use({
		"simrat39/symbols-outline.nvim",
		config = function()
			require("plugins.symbols-outline")
		end,
	})

	-- error from 2022/1/5
	--use 'millermedeiros/vim-esformatter'

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
			require("jump_to_github").setup({})
		end,
	})

	use("f-person/git-blame.nvim")

	-- ==== markdown ==============
	use("tpope/vim-markdown")

	-- ==== cpp ==============
	use("vim-jp/cpp-vim")

	-- ==== ruby ==============
	use("vim-ruby/vim-ruby")

	-- ==== tree ==============
	use("chr4/nginx.vim")

	-- ====== lint/fix ====
	use("w0rp/ale")

	-- === svelt ==============================
	use("evanleck/vim-svelte")

	--" typescript language server

	-- ====== browse js ====
	use({ "tacogips/browsejs.nvim", run = ":UpdateRemoteuseins" })

	use("w0ng/vim-hybrid")

	use("dart-lang/dart-vim-plugin")

	-- authomated ctags not needed
	--use 'ludovicchabant/vim-gutentags'
	--

	--" ==== rust ===========================================
	use("rust-lang/rust.vim")
	use({
		"simrat39/rust-tools.nvim",
		config = function()
			require("plugins.rust-tools")
		end,
	})

	use("ron-rs/ron.vim")

	use("thyrgle/vim-dyon")

	-- ====== terraform ====
	use("hashivim/vim-terraform")

	-- ====== latext ====
	-- error?
	--use 'lervag/vimtex'

	-- ====== graphql ====
	use("jparise/vim-graphql")

	-- ====== processing ====
	use("sophacles/vim-processing")

	-- ====== flutter ====
	use("thosakwe/vim-flutter")

	-- ====== firestore ====
	use("delphinus/vim-firestore")

	--show color code in vim
	use({ "rrethy/vim-hexokinase", run = "make hexokinase" })

	-- ====== julia ====
	use("JuliaEditorSupport/julia-vim")
	use("kdheepak/JuliaFormatter.vim")

	-- ====== css/postcss ====
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

	-- === nim  ==============
	use("alaviss/nim.nvim")

	-- === pest(parser generator made of rust)  ==============
	use("scowcron/vim-pest")

	-- === color scheme ==============================
	use("cocopon/iceberg.vim")

	use({
		"tacogips/dairi",
		run = "make install",
		config = function()
			require("plugins.dairi")
		end,
	})

	use({
		"tacogips/strdeco.nvim",
		--"/d/gits/tacogips/strdeco.nvim",
		config = function()
			require("plugins.strdeco")
		end,
	})

	use({
		"phaazon/hop.nvim",
		branch = "v1", -- optional but strongly recommended
		config = function()
			require("plugins.hop")
		end,
	})
end)

require("plugins.ale")
require("plugins.vim-go")
require("plugins.quickrun")
require("plugins.git-blame")
