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
      close_if_last_window = true,
      popup_border_style = 'rounded',
      window = {
        position = 'right',
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        hijack_netrw_behavior = 'open_default',
      },
    }
    -- vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', {
    --   fg = '#F5758E',
    -- })
    local map = vim.api.nvim_set_keymap

    -- Function to toggle/focus Neo-tree
    function ToggleOrFocusNeoTree()
      local neotree_winid = nil
      for _, win in ipairs(vim.api.nvim_list_wins()) do
        local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(win))
        if bufname:match 'neo%-tree filesystem' then
          neotree_winid = win
          break
        end
      end

      if neotree_winid then
        if vim.api.nvim_get_current_win() == neotree_winid then
          vim.cmd 'Neotree toggle'
        else
          vim.api.nvim_set_current_win(neotree_winid)
        end
      else
        vim.cmd 'Neotree toggle'
      end
    end

    map('n', '<C-n>', ':lua ToggleOrFocusNeoTree()<CR>', {})
  end,
}
