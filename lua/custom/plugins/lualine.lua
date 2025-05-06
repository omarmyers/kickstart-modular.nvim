return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local cp = require('catppuccin.palettes').get_palette 'mocha'

      local colors = {
        bg = cp.base,
        fg = cp.text,
        red = cp.red,
        yellow = cp.yellow,
        green = cp.green,
        blue = cp.blue,
        magenta = cp.mauve,
        cyan = cp.teal,
        violet = cp.lavender,
        black = cp.crust,
        grey = cp.surface0,
      }

      local lualine_theme = {
        normal = {
          a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
          b = { fg = colors.fg, bg = colors.grey },
          c = { fg = colors.fg, bg = colors.bg },
        },
        insert = {
          a = { fg = colors.black, bg = colors.green, gui = 'bold' },
        },
        visual = {
          a = { fg = colors.black, bg = colors.violet, gui = 'bold' },
        },
        replace = {
          a = { fg = colors.black, bg = colors.red, gui = 'bold' },
        },
        command = {
          a = { fg = colors.black, bg = colors.yellow, gui = 'bold' },
        },
        inactive = {
          a = { fg = colors.fg, bg = colors.bg },
          b = { fg = colors.fg, bg = colors.bg },
          c = { fg = colors.fg, bg = colors.bg },
        },
      }

      require('lualine').setup {
        options = {
          theme = lualine_theme,
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
          icons_enabled = true,
        },
        sections = {
          lualine_a = { { 'mode', separator = { left = '' }, right_padding = 1 } },
          lualine_b = {
            { 'branch', icon = '' },
            {
              'diff',
              symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
              diff_color = {
                added = { fg = colors.green },
                modified = { fg = cp.peach },
                removed = { fg = colors.red },
              },
            },
          },
          lualine_c = {
            {
              function()
                local msg = ' No LSP'
                local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
                local clients = vim.lsp.get_clients()
                for _, client in ipairs(clients) do
                  local ft = client.config.filetypes
                  if ft and vim.tbl_contains(ft, buf_ft) then
                    return ' ' .. client.name
                  end
                end
                return msg
              end,
              color = { fg = colors.cyan, gui = 'bold' },
            },
          },
          lualine_x = {
            {
              'diagnostics',
              sources = { 'nvim_diagnostic' },
              symbols = { error = ' ', warn = ' ', info = ' ' },
              diagnostics_color = {
                error = { fg = colors.red },
                warn = { fg = colors.yellow },
                info = { fg = colors.cyan },
              },
            },
            'encoding',
            'fileformat',
            'filetype',
          },
          lualine_y = { 'progress' },
          lualine_z = { { 'location', separator = { right = '' }, left_padding = 1 } },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = {},
      }
    end,
  },
}
