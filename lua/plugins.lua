require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

  -- LSP	
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use { "williamboman/mason.nvim" }

	-- Nvim CMP Completion
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lua")
	use({
		"hrsh7th/nvim-cmp",
		requires = { { "hrsh7th/cmp-nvim-lsp" }, { "hrsh7th/cmp-buffer" } },
	})
	use("hrsh7th/cmp-nvim-lsp-signature-help")

  	 -- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("p00f/nvim-ts-rainbow")
	use({ "romgrk/nvim-treesitter-context", requires = "nvim-treesitter/nvim-treesitter" })

	 -- Snippets
	use("L3MON4D3/LuaSnip")

	 -- UI
	use { "folke/tokyonight.nvim", commit = "66bfc2e8f754869c7b651f3f47a2ee56ae557764" }
  	use { "lunarvim/darkplus.nvim", commit = "13ef9daad28d3cf6c5e793acfc16ddbf456e1c83" }
	use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })
	use({
		"hoob3rt/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("RRethy/nvim-base16")
 	use("kyazdani42/nvim-web-devicons")
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})
  	use("ryanoasis/vim-devicons")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
		requires = { { "nvim-telescope/telescope.nvim" } },
	})
	use({ "nvim-telescope/telescope-file-browser.nvim" })
  	use({ "nvim-telescope/telescope-dap.nvim", requires = "mfussenegger/nvim-dap" })
	use("nvim-telescope/telescope-ui-select.nvim")
	use("chip/telescope-software-licenses.nvim")

    	-- DAP Mode
	use("mfussenegger/nvim-dap")
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use("mfussenegger/nvim-dap-python")
	use("theHamsta/nvim-dap-virtual-text")

    	-- Git
	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })
	use("sindrets/diffview.nvim")
	use("airblade/vim-gitgutter")

    	-- Text Editing
	-- use("beauwilliams/focus.nvim")
	use("tpope/vim-surround")
	use("windwp/nvim-autopairs")

    	-- Programming
	use("ahmedkhalf/project.nvim")
	use("mhartington/formatter.nvim")
	use("peterhoeg/vim-qml")

    	-- Misc
	use("Pocco81/auto-save.nvim")
	use("AckslD/nvim-neoclip.lua")

   	-- Motion
	use("phaazon/hop.nvim")

	-- Markdown
	use("dhruvasagar/vim-table-mode")


end)
