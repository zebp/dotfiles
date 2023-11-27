vim.cmd [[packadd packer.nvim]]


return require('packer').startup(
	function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'

		-- Use telescope as a fuzzy finder.
		use {
			'nvim-telescope/telescope.nvim',
			tag = '0.1.4',
			requires = { { 'nvim-lua/plenary.nvim' } }
		}

		-- Theme!
		use 'projekt0n/github-nvim-theme'

		-- Tree sitter stuff
		use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end
		}
		use("nvim-treesitter/playground")

		-- Language servers
		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v3.x',
			requires = {
				--- Uncomment these if you want to manage LSP servers from neovim
				{ 'williamboman/mason.nvim' },
				{ 'williamboman/mason-lspconfig.nvim' },

				-- LSP Support
				{ 'neovim/nvim-lspconfig' },
				-- Autocompletion
				{ 'hrsh7th/nvim-cmp' },
				{ 'hrsh7th/cmp-nvim-lsp' },
				{ 'L3MON4D3/LuaSnip' },
			}
		}

		-- Useful stuff
		use 'echasnovski/mini.nvim'
	end
)
