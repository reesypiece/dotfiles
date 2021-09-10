require 'gitsigns'.setup {
	signs = {
    	topdelete = {
			hl = 'GitSignsDelete',
			text = '-'
		},
		changedelete = {
	    	hl = 'GitSignsChange',
			text = '|'
		},
	}
}

