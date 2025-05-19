-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- NOTE: This receives a notification from a computer script and changes the theme
vim.api.nvim_create_autocmd('Signal', {
  pattern = 'SIGUSR1',
  callback = function()
    require('custom.plugins.rose-pine').config()
    -- require('custom.plugins.lualine').config()
  end,
})
