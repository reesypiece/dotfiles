local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn['UltiSnps#Anon'](args.body)
		end,
	},
	sources = {
		{ name = 'nvim_lsp', priority = 1 },
		{ name = 'ultisnips' },
		{ name = 'buffer' },
		{ name = 'path' },
	},
})
