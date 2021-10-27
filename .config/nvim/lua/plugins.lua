return require('packer').startup(function()
    -- Packer needed here, I guess
    use 'wbthomason/packer.nvim'

	-- GUI stuff
    use 'kyazdani42/nvim-tree.lua'
	use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	    use {
        'akinsho/nvim-bufferline.lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

	-- LSP stuff
	use {'hrsh7th/nvim-compe', requires = {'neovim/nvim-lspconfig', 'kabouzeid/nvim-lspinstall', 'hrsh7th/vim-vsnip'}}	
	use 'nvim-lua/lsp_extensions.nvim'
	use 'nvim-lua/completion-nvim'
    use 'onsails/lspkind-nvim'

	-- colours
	use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}
	use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim"}
	use {'ntk148v/vim-horizon', as = 'horizon'}
	use {'dracula/vim', as = 'dracula'}
	use {'embark-theme/vim', as = 'embark'}
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use "norcalli/nvim-colorizer.lua"

	-- etc
	use 'dstein64/nvim-scrollview'
	use 'jiangmiao/auto-pairs'
	use 'andweeb/presence.nvim'
    use 'wakatime/vim-wakatime' -- Time tracker
end)

