return {

  { -- Linting
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        markdown = { 'markdownlint' },
        yaml = { 'yamllint' },
        json = { 'jsonlint' },
        python = { 'flake8', 'pylint' },
        -- javascript = { 'eslint_d' },
        -- typescript = { 'eslint_d' },
        -- vue = { 'eslint_d' },
        -- svelte = { 'eslint_d' },
      }

      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          require('lint').try_lint()
        end,
      })

      -- Set pylint to work in virtualenv
      require('lint').linters.pylint.cmd = 'python'
      require('lint').linters.pylint.args = { '-m', 'pylint', '-f', 'json' }
      -- set up keybind to lint
      vim.keymap.set('n', '<leader>i', lint.try_lint, { desc = 'Lint the current buffer' })
    end,
  },
}
