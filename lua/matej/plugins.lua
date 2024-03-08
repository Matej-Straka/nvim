local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'wbthomason/packer.nvim',
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {
	  'ayu-theme/ayu-vim',
	  as = 'ayu',
	  config = function()
		  vim.cmd('set termguicolors')
		  vim.cmd('let ayucolor="dark"')
		  vim.cmd('colorscheme ayu')

	  end
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    'nvim-treesitter/playground',
    'ThePrimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v3.x',
	    dependencies = {
		    --- Uncomment the two plugins below if you want to manage the language servers from neovim
		    -- {'williamboman/mason.nvim'},
		    -- {'williamboman/mason-lspconfig.nvim'},

		    -- LSP Support
		    {'neovim/nvim-lspconfig'},
		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},
		    {'hrsh7th/cmp-nvim-lsp'},
		    {'L3MON4D3/LuaSnip'},
	    }
    },
    {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
    },
    'ThePrimeagen/vim-be-good',
    'sbdchd/neoformat',

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    'nvim-tree/nvim-web-devicons',
    'dstein64/vim-startuptime',
    'nvim-tree/nvim-tree.lua'
}
require("lazy").setup(plugins, opts)
