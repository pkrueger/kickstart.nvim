return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'macchiato',
      -- transparent_background = false,
      -- color_overrides = {
      --   macchiato = {
      --     base = '#23263A',
      --   },
      -- },
    }
  end,
  init = function()
    vim.cmd.colorscheme 'catppuccin'
  end,
}
