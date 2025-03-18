return {
  {
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- lazy = false,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    'shaunsingh/nord.nvim',
    priority = 1000,
    -- lazy = false,
    config = function()
      -- vim.cmd.colorscheme 'nord'
    end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'oxocarbon'
    end,
  },
  {
    'sainnhe/everforest',
    -- lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      -- vim.g.everforest_enable_italic = true
      -- vim.cmd.colorscheme 'everforest'
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine-moon',
    config = function()
      -- vim.cmd.colorscheme 'rose-pine-moon'
    end,
  },
}
