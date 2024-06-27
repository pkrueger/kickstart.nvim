return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup {
      ui = {
        code_action = '',
      },
    }
    vim.keymap.set('n', '<Leader>h', '<Nop>', { desc = 'Lspsaga' })
    vim.keymap.set('n', '<Leader>hi', ':Lspsaga incoming_calls<CR>', {})
    vim.keymap.set('n', '<Leader>ho', ':Lspsaga outgoing_calls<CR>', {})
    vim.keymap.set('n', '<Leader>hu', ':Lspsaga outline<CR>', {})
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
