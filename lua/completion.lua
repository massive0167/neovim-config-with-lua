local cmp = require("cmp")
--local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			-- For `luasnip` user.
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
  sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
    { name = 'nvim_lsp_signature_help' },
		{ name = "nvim_lua" },
  }, {
		{ name = "buffer" },
  }),
	
})

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
