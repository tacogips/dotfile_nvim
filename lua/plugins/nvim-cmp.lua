local cmp = require("cmp")

local luasnip = require("luasnip")

cmp.setup({
	--completion = {
	--	autocomplete = false,
	--},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	mapping = {
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
	sources = cmp.config.sources({
		{ name = "luasnip" },
		{ name = "path" },
	}, {
		{ name = "buffer" },
	}),
})

cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})

--TODO(tacogips) this config hijacks default auto completion for commands
cmp.setup.cmdline(":", {
	sources = cmp.config.sources({

		{ name = "path" },
		{ name = "cmdline" },
	}, {
		{ name = "buffer" },
	}),
})

_G.vimrc = _G.vimrc or {}
_G.vimrc.cmp = _G.vimrc.cmp or {}
_G.vimrc.cmp.lsp = function()
	cmp.complete({
		config = {
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			},
		},
	})
end

-- === key bindings =====================================
local kmap = require("utils.keymap")

kmap.i("<C-a>", "<Cmd>lua vimrc.cmp.lsp()<CR>")
