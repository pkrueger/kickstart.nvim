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
        javascript = { 'eslint_d' },
        typescript = { 'eslint_d' },
        vue = { 'eslint_d' },
        svelte = { 'eslint_d' },
      }

      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },
}
