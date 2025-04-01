return {
  {
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- lazy = false,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
      }
      -- vim.cmd.colorscheme 'catppuccin'
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
      vim.cmd.colorscheme 'rose-pine-moon'
    end,
  },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
}
