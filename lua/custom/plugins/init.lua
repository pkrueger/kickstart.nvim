-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_assume_mapped = true
    vim.keymap.del('i', '<Tab>')

    --
    -- NOTE: This does not work currently because of a potential bug in copilot.vim
    -- vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')
    --

    vim.keymap.set('i', '<C-L>', '<ESC>:echo "C-L works"<CR>', { noremap = true, silent = true })
    vim.keymap.set('i', '<C-J>', '<Nop>', { noremap = true })
    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
    vim.g.copilot_no_tab_map = true
  end,
}
