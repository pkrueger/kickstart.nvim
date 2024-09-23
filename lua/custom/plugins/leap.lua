return {
  'ggandor/leap.nvim',
  config = function()
    vim.keymap.set('n', 'ss', '<Plug>(leap)')
    vim.keymap.set('n', 'sS', '<Plug>(leap-from-window)')
    vim.keymap.set({ 'x', 'o' }, 'ss', '<Plug>(leap-forward)')
    vim.keymap.set({ 'x', 'o' }, 'sS', '<Plug>(leap-backward)')
  end,
}
