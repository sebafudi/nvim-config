vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({ "wbthomason/packer.nvim" })
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.2", requires = { { "nvim-lua/plenary.nvim" } } })
	use({
		"Shatur/neovim-ayu",
		as = "ayu",
		config = function()
			ColorMyPencils("ayu")
		end,
	})
	use({ "github/copilot.vim" })
	use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })
	use({ "nvim-treesitter/playground" })
	use({ "mbbill/undotree" })
	use({ "tpope/vim-fugitive" })
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})
	use({
		"luochen1990/rainbow",
		config = function()
			vim.g.rainbow_active = 1
		end,
	})
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup({
				shell = "powershell",
			})
		end,
	})
	use({ "nvim-lualine/lualine.nvim" })
	use({ "sbdchd/neoformat" })
end)
