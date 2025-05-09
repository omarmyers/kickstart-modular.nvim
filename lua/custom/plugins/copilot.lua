return {
  -- {
  --   'Exafunction/codeium.nvim',
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'hrsh7th/nvim-cmp',
  --   },
  --   config = function()
  --     require('codeium').setup {
  --       enable = true,
  --     }
  --     -- Custom Keybindings
  --     vim.keymap.set('i', '<C-g>', function()
  --       return vim.fn['codeium#Accept']()
  --     end, { expr = true, silent = true, desc = 'Accept Codeium Suggestion' })
  --     vim.keymap.set('i', '<C-j>', function()
  --       return vim.fn
  --     end, { expr = true, silent = true, desc = 'Next Codeium Suggestion' })
  --     vim.keymap.set('i', '<C-k>', function()
  --       return vim.fn['codeium#CycleCompletions'](-1)
  --     end, { expr = true, silent = true, desc = 'Previous Codeium Suggestion' })
  --     vim.keymap.set('i', '<C-x>', function()
  --       return vim.fn['codeium#Clear']()
  --     end, { expr = true, silent = true, desc = 'Dismiss Codeium Suggestion' })
  --   end,
  -- },
  -- {
  --   'Exafunction/codeium.nvim',
  --   cmd = 'Codeium',
  --   event = 'InsertEnter',
  --   opts = {
  --     enable_cmp_source = vim.g.ai_cmp or false, -- Ensure 'vim.g.ai_cmp' is set
  --     virtual_text = {
  --       enabled = not (vim.g.ai_cmp or false),
  --     },
  --     key_bindings = {
  --       accept = '<C-g>',
  --       next = '<C-k>',
  --       prev = '<C-j>',
  --     },
  --   },
  -- },
  {
    'Exafunction/windsurf.vim',
    event = 'BufEnter',
  },
}
