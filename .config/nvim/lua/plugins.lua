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
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('glepnir/dashboard-nvim')

	-- LSP stuff
	use({
		'hrsh7th/nvim-cmp',
		requires = {
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-buffer' },
		},
	})
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/lsp_extensions.nvim'
	use 'nvim-lua/completion-nvim'
    use 'onsails/lspkind-nvim'

	-- colours
	use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}
	use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim"}
	use {'ntk148v/vim-horizon', as = 'horizon'}
	use {'dracula/vim', as = 'dracula'}
	use {'embark-theme/vim', as = 'embark'}
    use {'folke/tokyonight.nvim', as = 'tokyonight'}
    use {'joshdick/onedark.vim', as = 'onedark'}
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use "norcalli/nvim-colorizer.lua"

	-- etc
	use 'dstein64/nvim-scrollview'
	use 'jiangmiao/auto-pairs'
	use 'andweeb/presence.nvim'
	use 'wakatime/vim-wakatime'
end)

