return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      popup_border_style = 'rounded',
    }
    vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', {
      fg = '#F5758E',
    })
    vim.keymap.set('n', '<C-n>', ':Neotree toggle float<CR>', {})
  end,
}
