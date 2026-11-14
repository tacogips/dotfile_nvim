local client = require("run-jupyter")

client.setup({
	jupyter = {
		endpoint = "http://localhost:8888",
	},
	output = {
		image_view_cmd = nil,
	},
})

local kmap = require("utils.keymap")
local cmd = vim.cmd

kmap.n(".r", "<CMD>lua require('run-jupyter').run_selecting_code()<CR>")

kmap.n("..", "<CMD>lua require('run-jupyter').close_result_window()<CR>")

cmd([[command! StartKernel :lua require("run-jupyter").open_start_kernel_selection() ]])
cmd([[command! SwitchKernel :lua require("run-jupyter").open_switch_kernel_selection() ]])
cmd([[command! KillKernel :lua require("run-jupyter").open_kill_kernel_selection() ]])

kmap.v(".r", "<CMD>lua require('run-jupyter').run_selecting_code()<CR>")

--K.n("'b", '<CMD>lua Telescope.buffers()<CR>')
