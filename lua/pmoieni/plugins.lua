local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("startup-nvim/startup.nvim") -- Startup page
	use("marko-cerovac/material.nvim") -- Material theme
	-- use 'folke/tokyonight.nvim' -- Tokyonight theme
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("folke/todo-comments.nvim") -- comment highlighting
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("williamboman/mason.nvim")
	use({
		"williamboman/mason-lspconfig.nvim",
		run = function()
			require("mason-lspconfig").setup_handlers({})
		end,
	})
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("nvim-telescope/telescope.nvim")
	use("windwp/nvim-autopairs")
	use("norcalli/nvim-colorizer.lua")
	use("romgrk/barbar.nvim")
	use("lewis6991/gitsigns.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("rcarriga/nvim-notify")
end)
