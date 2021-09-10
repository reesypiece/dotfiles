require 'nvim-treesitter.configs'.setup {
	ensure_installed = {'rust', 'cpp', 'java', 'typescript', 'lua', 'haskell'},
	highlight = {
		enable = true
	}
}
