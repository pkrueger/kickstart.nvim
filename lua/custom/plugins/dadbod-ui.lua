return {
  {
    'tpope/vim-dadbod',
    dependencies = {
      'kristijanhusak/vim-dadbod-ui',
      'kristijanhusak/vim-dadbod-completion',
    },
    opts = {
      db_completion = function()
        require('cmp').setup.buffer { sources = { { name = 'vim-dadbod-completion' } } }
      end,
    },
    config = function(_, opts)
      vim.g.db_ui_save_location = vim.fn.stdpath 'config' .. '/db_ui'

      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_env_variable_url = 'DATABASE_URL'

      -- Enable automatic schema detection
      vim.g.db_ui_auto_execute_table_helpers = 1

      -- Use :set nowrap in result buffers
      vim.g.db_ui_result_wrap_results = 0

      -- Configure result layout
      vim.g.db_ui_winwidth = 30
      vim.g.db_ui_win_position = 'right'

      -- Configure table helper layout
      vim.g.db_ui_table_helpers = {
        { helper = 'SELECT * FROM {table} LIMIT 100', bang = true },
        { helper = 'SELECT COUNT(*) FROM {table}', bang = true },
        { helper = 'DESC {table}', bang = true },
      }

      vim.api.nvim_create_autocmd('FileType', {
        pattern = {
          'sql',
          'mysql',
          'plsql',
        },
        callback = function()
          vim.schedule(opts.db_completion)
        end,
      })

      -- Add key mappings for DBUI
      vim.api.nvim_set_keymap('n', '<leader>ub', ':DBUIToggle<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>uf', ':DBUIFindBuffer<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>ur', ':DBUIRenameBuffer<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>ul', ':DBUILastQueryInfo<CR>', { noremap = true, silent = true })
    end,
  },
}
