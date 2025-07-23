return {
  {
    'akinsho/bufferline.nvim',
    after = 'catppuccin',
    config = function()
      require('bufferline').setup {
        highlights = require('catppuccin.groups.integrations.bufferline').get(),
        options = {
          diagnostics = 'nvim_lsp',
          show_buffer_close_icons = false,
          numbers = 'ordinal',
        },
      }
    end,
  },
}
