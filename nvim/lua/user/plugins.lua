-- https://github.com/rockerBOO/awesome-neovim
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use "christoomey/vim-tmux-navigator"
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("user.plugins.nvim-tree")
    end
  }

  use {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("user.plugins.gruvbox")
    end
  }

  -- Dependencies https://github.com/BurntSushi/ripgrep https://github.com/sharkdp/fd
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "kyazdani42/nvim-web-devicons" },
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
    },
    config = function()
      require("user.plugins.telescope")
    end
  }

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- TreeSitter
  -- Require g++
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("user.plugins.treesitter")
    end
  }

  -- Autopairs, integrates with both cmp and treesitter
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("user.plugins.autopairs")
    end
  }
  -- Easily comment stuff
  use {
    "numToStr/Comment.nvim",
    config = function()
      require("user.plugins.comment")
    end
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("user.plugins.gitsigns")
    end
  }

  -- Bufferline
  use {
    "akinsho/bufferline.nvim",
    requires = {
      { "moll/vim-bbye" },
    },
    config = function()
      require("user.plugins.bufferline")
    end
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
