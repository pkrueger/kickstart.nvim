-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'p00f/clangd_extensions.nvim',
    lazy = true,
    config = function()
      require('clangd_extensions').setup()
    end,
  },
  {
    'Hoffs/omnisharp-extended-lsp.nvim',
    lazy = true,
  },
  {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
      require('distant'):setup {
        ['*'] = {
          mode = 'ssh',
          ssh = {
            -- You'll need to update these values
            user = 'your-windows-username',
            host = 'your-azure-host',
          },
        },
      }
    end,
  },
}
