return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
        diagnostics = 'nvim_lsp',
        offsets = {
          {
            filetype = 'snacks_picker_list',
            text = 'Snacks Explorer',
            highlight = 'Directory',
            text_align = 'center',
          },
        },
        separator_style = 'slant',
        -- indicator = {
        --   style = 'underline',
        -- },
        numbers = 'ordinal',
      },
      highlights = {
        separator = {
          fg = '#11111B', -- Custom color for the separator
          -- bg = '#11111B',
        },
        separator_selected = {
          fg = '#11111B', -- Color of separator in the active tab
          -- bg = '#11111B',
        },
        separator_visible = {
          fg = '#11111B',
          -- bg = '#11111B',
        },
        buffer_selected = {
          fg = '#B4BEFE',
          -- bg = '#1E1E2E',
        },
        -- background = {
        --   bg = '#181825',
        -- },
        fill = {
          bg = '#11111B', -- Color of the tabline background
        },
        -- indicator_selected = {
        --   fg = '#F38BA8',
        --   bg = '#F38BA8',
        -- },
        -- indicator_visible = {
        --   fg = '#F38BA8',
        --   bg = '#F38BA8',
        -- },
      },
    },
  },
}
