require("zig-tools").setup({

	--- Commands to interact with your project compilation
	---@type boolean
	expose_commands = true,
	--- Format source code
	---@type table
	formatter = {
		--- Enable formatting, create commands
		---@type boolean
		enable = false,
		--- Events to run formatter, empty to disable
		---@type table
		events = {},
	},
	--- Check for compilation-time errors
	---@type table
	checker = {
		--- Enable checker, create commands
		---@type boolean
		enable = false,
		--- Run before trying to compile?
		---@type boolean
		before_compilation = false,
		--- Events to run checker
		---@type table
		events = {},
	},
	--- Project compilation helpers
	---@type table
	project = {
		--- Extract all build tasks from `build.zig` and expose them
		---@type boolean
		build_tasks = true,
		--- Enable rebuild project on save? (`:ZigLive` command)
		---@type boolean
		live_reload = true,
		--- Extra flags to be passed to compiler
		---@type table
		flags = {
			--- `zig build` flags
			---@type table
			build = { "-freference-trace" },
			--- `zig run` flags
			---@type table
			run = { "-freference-trace" },
		},
		--- Automatically compile your project from within Neovim
		auto_compile = {
			--- Enable automatic compilation
			---@type boolean
			enable = false,
			--- Automatically run project after compiling it
			---@type boolean
			run = true,
		},
	},
	--- zig-tools.nvim integrations
	---@type table
	integrations = {
		--- Third-party Zig packages manager integration
		---@type table
		package_managers = { "zigmod", "gyro" },
		--- Zig Language Server
		---@type table
		zls = {
			--- Enable inlay hints
			---@type boolean
			hints = false,
			--- Manage installation
			---@type table
			management = {
				--- Enable ZLS management
				---@type boolean
				enable = false,
				--- Installation path
				---@type string
				install_path = os.getenv("HOME") .. "/.nix-profile/bin",
				--- Source path (where to clone repository when building from source)
				---@type string
				source_path = os.getenv("HOME") .. "/.local/zig/zls",
			},
		},
	},

	terminal = {

		insert_mappings = false,
		terminal_mappings = false,
		direction = "horizontal",
		auto_scroll = true,
		--close_on_exit = false,
		close_on_exit = false,
	},
})
