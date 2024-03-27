return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'macchiato',
      integrations = {
        gitsigns = true,
        mason = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        neotree = true,
        treesitter = true,
        telescope = {
          enabled = true,
        },
      },
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
