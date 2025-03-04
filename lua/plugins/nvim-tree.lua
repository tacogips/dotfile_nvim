local function nvim_tree_on_attach(bufnr)
	local nvimtree_api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- BEGIN_DEFAULT_ON_ATTACH
	vim.keymap.set("n", "<C-]>", nvimtree_api.tree.change_root_to_node, opts("CD"))
	vim.keymap.set("n", "<C-e>", nvimtree_api.node.open.replace_tree_buffer, opts("Open: In Place"))
	vim.keymap.set("n", "<C-k>", nvimtree_api.node.show_info_popup, opts("Info"))
	vim.keymap.set("n", "<C-r>", nvimtree_api.fs.rename_sub, opts("Rename: Omit Filename"))
	vim.keymap.set("n", "<C-t>", nvimtree_api.node.open.tab, opts("Open: New Tab"))
	vim.keymap.set("n", "<C-v>", nvimtree_api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "<C-x>", nvimtree_api.node.open.horizontal, opts("Open: Horizontal Split"))
	vim.keymap.set("n", "<BS>", nvimtree_api.node.navigate.parent_close, opts("Close Directory"))
	vim.keymap.set("n", "<CR>", nvimtree_api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<Tab>", nvimtree_api.node.open.preview, opts("Open Preview"))
	vim.keymap.set("n", ">", nvimtree_api.node.navigate.sibling.next, opts("Next Sibling"))
	vim.keymap.set("n", "<", nvimtree_api.node.navigate.sibling.prev, opts("Previous Sibling"))
	vim.keymap.set("n", ".", nvimtree_api.node.run.cmd, opts("Run Command"))
	vim.keymap.set("n", "-", nvimtree_api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "a", nvimtree_api.fs.create, opts("Create"))
	vim.keymap.set("n", "bd", nvimtree_api.marks.bulk.delete, opts("Delete Bookmarked"))
	vim.keymap.set("n", "bmv", nvimtree_api.marks.bulk.move, opts("Move Bookmarked"))
	vim.keymap.set("n", "B", nvimtree_api.tree.toggle_no_buffer_filter, opts("Toggle Filter: No Buffer"))
	vim.keymap.set("n", "c", nvimtree_api.fs.copy.node, opts("Copy"))
	vim.keymap.set("n", "C", nvimtree_api.tree.toggle_git_clean_filter, opts("Toggle Filter: Git Clean"))
	vim.keymap.set("n", "[c", nvimtree_api.node.navigate.git.prev, opts("Prev Git"))
	vim.keymap.set("n", "]c", nvimtree_api.node.navigate.git.next, opts("Next Git"))
	vim.keymap.set("n", "d", nvimtree_api.fs.remove, opts("Delete"))
	vim.keymap.set("n", "D", nvimtree_api.fs.trash, opts("Trash"))
	vim.keymap.set("n", "E", nvimtree_api.tree.expand_all, opts("Expand All"))
	vim.keymap.set("n", "e", nvimtree_api.fs.rename_basename, opts("Rename: Basename"))
	vim.keymap.set("n", "]e", nvimtree_api.node.navigate.diagnostics.next, opts("Next Diagnostic"))
	vim.keymap.set("n", "[e", nvimtree_api.node.navigate.diagnostics.prev, opts("Prev Diagnostic"))
	vim.keymap.set("n", "F", nvimtree_api.live_filter.clear, opts("Clean Filter"))
	-- using hop
	--vim.keymap.set("n", "f", nvimtree_api.live_filter.start, opts("Filter"))
	vim.keymap.set("n", "g?", nvimtree_api.tree.toggle_help, opts("Help"))
	vim.keymap.set("n", "gy", nvimtree_api.fs.copy.absolute_path, opts("Copy Absolute Path"))
	vim.keymap.set("n", "H", nvimtree_api.tree.toggle_hidden_filter, opts("Toggle Filter: Dotfiles"))
	vim.keymap.set("n", "I", nvimtree_api.tree.toggle_gitignore_filter, opts("Toggle Filter: Git Ignore"))
	vim.keymap.set("n", "J", nvimtree_api.node.navigate.sibling.last, opts("Last Sibling"))
	vim.keymap.set("n", "K", nvimtree_api.node.navigate.sibling.first, opts("First Sibling"))
	--vim.keymap.set("n", "m", nvimtree_api.marks.toggle, opts("Toggle Bookmark"))
	vim.keymap.set("n", "o", nvimtree_api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "O", nvimtree_api.node.open.no_window_picker, opts("Open: No Window Picker"))
	vim.keymap.set("n", "p", nvimtree_api.fs.paste, opts("Paste"))
	vim.keymap.set("n", "P", nvimtree_api.node.navigate.parent, opts("Parent Directory"))
	vim.keymap.set("n", "q", nvimtree_api.tree.close, opts("Close"))
	-- using hop
	---vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
	vim.keymap.set("n", "m", nvimtree_api.fs.rename, opts("Rename"))

	vim.keymap.set("n", "R", nvimtree_api.tree.reload, opts("Refresh"))
	vim.keymap.set("n", "s", nvimtree_api.node.run.system, opts("Run System"))
	vim.keymap.set("n", "S", nvimtree_api.tree.search_node, opts("Search"))
	vim.keymap.set("n", "U", nvimtree_api.tree.toggle_custom_filter, opts("Toggle Filter: Hidden"))
	vim.keymap.set("n", "W", nvimtree_api.tree.collapse_all, opts("Collapse"))
	vim.keymap.set("n", "x", nvimtree_api.fs.cut, opts("Cut"))
	vim.keymap.set("n", "y", nvimtree_api.fs.copy.filename, opts("Copy Name"))
	vim.keymap.set("n", "Y", nvimtree_api.fs.copy.relative_path, opts("Copy Relative Path"))
	vim.keymap.set("n", "<2-LeftMouse>", nvimtree_api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<2-RightMouse>", nvimtree_api.tree.change_root_to_node, opts("CD"))
	-- END_DEFAULT_ON_ATTACH
end

require("nvim-tree").setup({

	--update_cwd = true,

	hijack_netrw = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
		update_root = true,
		ignore_list = {},
	},
	filters = {
    git_ignored = false,
		dotfiles = true,
		custom = {},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	actions = {
		change_dir = {
			enable = true,
			global = true,
		},
		open_file = {
			quit_on_open = false,
			resize_window = false,
		},
	},
	on_attach = nvim_tree_on_attach,
})

local kmap = require("utils.keymap")
kmap.n("<Space>e", ":<C-u>NvimTreeFindFileToggle<Cr>")
kmap.n("<Space>d", ":<C-u>NvimTreeFindFileToggle<Cr>")

-- https://github.com/nvim-tree/nvim-tree.lua/issues/1981
local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end

-- lua require('nvim-tree.api').tree.open({current_window = true})"
--
--
--
-- --
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--   -- pass to setup along with your other options
--   require("nvim-tree").setup {
--     ---
--     on_attach = my_on_attach,
--     ---
--   }
-- <
