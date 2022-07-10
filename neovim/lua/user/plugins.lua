return require 'packer'.startup(function(use)
  use { 'wbthomason/packer.nvim' }
  use { 'christoomey/vim-tmux-navigator' }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('user.plugins.nvim-tree')
    end
  }

  use {
    'dracula/vim',
    as = 'dracula',
    config = function()
      require('user.plugins.dracula')
    end
  }

  -- Dependencies https://github.com/BurntSushi/ripgrep https://github.com/sharkdp/fd
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'kyazdani42/nvim-web-devicons' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    },
    config = function()
      require('user.plugins.telescope')
    end
  }
end)
