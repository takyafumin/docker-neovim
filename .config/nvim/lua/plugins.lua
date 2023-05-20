require("packer").startup(function(use)
	-- packer
	use 'wbthomason/packer.nvim'

	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

	-- cmp
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/vim-vsnip"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-cmdline"
	use "hrsh7th/cmp-copilot"
	use "onsails/lspkind.nvim"


	-- fuzzy finder
	use ({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use ({
		"nvim-telescope/telescope-frecency.nvim",
		config = function()
			require("telescope").load_extension("frecency")
		end,
		requires = {"kkharji/sqlite.lua"}
	})


	-- treesitter
	use 'nvim-treesitter/nvim-treesitter'
	use ({ 'yioneko/nvim-yati', tag = "*", requires = "nvim-treesitter/nvim-treesitter" })
	use 'nvim-treesitter/nvim-treesitter-context'


	-- colorscheme
	use 'sainnhe/gruvbox-material'
	use 'jacoborus/tender.vim'

	-- status line
	use "nvim-lualine/lualine.nvim"

	-- noice
	use ({ "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" } })

	-- terminal
	use 'Shougo/deol.nvim'
	use ({
		'akinsho/toggleterm.nvim',
		config = function()
			require("toggleterm").setup({
				size = 20,
				shade_terminals = true,
				shading_factor = 1,
				start_in_insert = true,
				insert_mappings = true,
				persist_size = true,
				direction = 'float',
			})
		end,
	})

	-- move
	use 'yuki-yano/fuzzy-motion.vim'
	use 'yutkat/wb-only-current-line.vim'

	-- kakko
	use 'cohama/lexima.vim'
	use 'kylechui/nvim-surround'

	-- comment
	use 'tpope/vim-commentary'

	-- git
	use 'tpope/vim-fugitive'
	use ({
		'airblade/vim-gitgutter',
		config = function()
			vim.g.gitgutter_sign_added = '+'
			vim.g.gitgutter_sign_modified = '~'
			vim.g.gitgutter_sign_removed = '-'
		end,
	})

	use 'BurntSushi/ripgrep'

	-- cursor
	use 'terryma/vim-multiple-cursors'

	-- emmet
	use 'mattn/emmet-vim'

	-- github copilot
	use 'github/copilot.vim'

	-- deno
	use 'vim-denops/denops.vim'

	-- line number
	use 'myusuf3/numbers.vim'

	-- translate
	use 'voldikss/vim-translator'

	-- indent
	use 'lukas-reineke/indent-blankline.nvim'

end)

