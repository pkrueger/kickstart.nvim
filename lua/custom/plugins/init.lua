-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_assume_mapped = true
    vim.keymap.del('i', '<Tab>')

    vim.keymap.set('i', '<M-\\>', '<Plug>(copilot-suggest)', { silent = true })

    vim.keymap.set('i', '<C-J>', '<Nop>', { noremap = true })
    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_filetypes = { ['*'] = false }
  end,
}
