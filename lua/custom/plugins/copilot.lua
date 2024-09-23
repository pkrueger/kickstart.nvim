return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_assume_mapped = true

    vim.keymap.set('i', '<M-\\>', '<Plug>(copilot-suggest)', { silent = true })

    vim.g.copilot_filetypes = { ['*'] = false }
  end,
}
