return {
  'luukvbaal/statuscol.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
  },
  config = function()
    local builtin = require 'statuscol.builtin'

    require('statuscol').setup {
      -- No touchy
      setopt = true,

      -- lnumfunc string options
      thousands = false,
      relculright = true,

      -- 'statuscolumn' options
      ft_ignore = nil,
      bt_ignore = nil,

      -- Default segments (fold -> sign -> line number + separator)
      segments = {
        { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
        {
          text = { builtin.lnumfunc, ' ' },
          condition = { true, builtin.not_empty },
          click = 'v:lua.ScLa',
        },
        { text = { '%s' }, click = 'v:lua.ScSa' },
      },

      clickmod = 'c',
      clickhandlers = {
        Lnum = builtin.lnum_click,
        FoldClose = builtin.foldclose_click,
        FoldOpen = builtin.foldopen_click,
        FoldOther = builtin.foldother_click,
        DapBreakpointRejected = builtin.toggle_breakpoint,
        DapBreakpoint = builtin.toggle_breakpoint,
        DapBreakpointCondition = builtin.toggle_breakpoint,
        DiagnosticSignError = builtin.diagnostic_click,
        DiagnosticSignHint = builtin.diagnostic_click,
        DiagnosticSignInfo = builtin.diagnostic_click,
        DiagnosticSignWarn = builtin.diagnostic_click,
        GitSignsTopdelete = builtin.gitsigns_click,
        GitSignsUntracked = builtin.gitsigns_click,
        GitSignsAdd = builtin.gitsigns_click,
        GitSignsChange = builtin.gitsigns_click,
        GitSignsChangedelete = builtin.gitsigns_click,
        GitSignsDelete = builtin.gitsigns_click,
        gitsigns_extmark_signs_ = builtin.gitsigns_click,
      },
    }
  end,
}
