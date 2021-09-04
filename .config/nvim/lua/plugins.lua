return require('packer').startup(function()
    -- Packer needed here, I guess
    use 'wbthomason/packer.nvim'

    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use 'kyazdani42/nvim-tree.lua'

	use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'},
		config = function()
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
		end
	}

	use 'dstein64/nvim-scrollview'

	use {'hrsh7th/nvim-compe', requires = {'neovim/nvim-lspconfig', 'kabouzeid/nvim-lspinstall', 'hrsh7th/vim-vsnip'},
		config = function()
			require 'compe'.setup {
				enabled = true,
				autocomplete = true,
				min_length = 3,
				preselect = 'enable',
				source = {
					path = true,
					buffer = true,
					calc = true,
					nvim_lsp = true,
					nvim_lua = true,
					vsnip = true,
					ultisnips = true,
				}
			}
		end
	}

	use { 'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	

	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
		config = function()
			require 'nvim-treesitter.configs'.setup {
				ensure_installed = {'rust', 'cpp', 'typescript', 'lua', 'haskell'},
				highlight = {
					enable = true
				}
			}
		end
	}

	use 'jiangmiao/auto-pairs'

	use {'andweeb/presence.nvim',
		config = function()
			require 'presence':setup {
				auto_update	= true,
				neovim_image_text = 'i don\'t want to deal with vscode',
				main_image = 'file',
				log_level = 'debug',
				debounce_timeout = 10,
				enable_line_number	= false,
				editing_text = 'Editing %s',
				file_explorer_text	= 'Browsing %s',
				git_commit_text = 'Committing Changes', 
				plugin_manager_text = 'Managing Plugins',
				reading_text = 'Looking at %s',
				workspace_text = 'Workspace: %s',
				line_number_text = 'Line %s/%s',
			}
		end
	}

	use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}

	use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim"}

	use {'embark-theme/vim', as = 'embark'}

	use "norcalli/nvim-colorizer.lua"

	use "onsails/lspkind-nvim"
end)
