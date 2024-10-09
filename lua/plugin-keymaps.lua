-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Undotree
vim.keymap.set('n', '<leader>tu', ':UndotreeToggle<CR>', { desc = '[T]oggle [U]ndotree' })
-- DOGE
vim.keymap.set('n', '<leader>dg', ':Neogen<CR>', { desc = '[D]ocumentation [G]enerate' })
-- Flash
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>s', function()
  require('flash').jump()
end, { desc = '[s]neak with flash' })
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>F', function()
  require('flash').treesitter()
end, { desc = '[F]lash with treesitter' })
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>?', function()
  require('flash').toggle()
end, { desc = '[F]lash with treesitter' })

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

-- Telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- vim: ts=2 sts=2 sw=2 et
