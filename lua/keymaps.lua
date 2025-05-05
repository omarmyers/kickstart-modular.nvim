-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Window commands
vim.keymap.set('n', '<leader>-', '<C-W>s', { desc = 'Split Window Below', remap = true })
vim.keymap.set('n', '<leader>|', '<C-W>v', { desc = 'Split Window Right', remap = true })
vim.keymap.set('n', '<leader>wd', '<C-W>c', { desc = 'Close Window', remap = true })

-- Add undo break-points
vim.keymap.set('i', ',', ',<c-g>u')
vim.keymap.set('i', '.', '.<c-g>u')
vim.keymap.set('i', ';', ';<c-g>u')

-- Bufferline keybindings
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Previous Buffer' })
vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', { desc = 'Go to Buffer 1' })
vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', { desc = 'Go to Buffer 2' })
vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', { desc = 'Go to Buffer 3' })
vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', { desc = 'Go to Buffer 4' })
vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', { desc = 'Go to Buffer 5' })
vim.keymap.set('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', { desc = 'Go to Buffer 6' })
vim.keymap.set('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', { desc = 'Go to Buffer 7' })
vim.keymap.set('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', { desc = 'Go to Buffer 8' })
vim.keymap.set('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', { desc = 'Go to Buffer 9' })
vim.keymap.set('n', '<leader>bd', ':Bdelete<CR>', { desc = 'Delete Buffer' })

-- Move Lines
--vim.keymap.set('n', '<A-j>', "<cmd>execute 'move .+' . v:count1<cr>==", { desc = 'Move Down' })
--vim.keymap.set('n', '<A-k>', "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = 'Move Up' })
--vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
--vim.keymap.set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
--vim.keymap.set('v', '<A-j>', ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = 'Move Down' })
--vim.keymap.set('v', '<A-k>', ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = 'Move Up' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
