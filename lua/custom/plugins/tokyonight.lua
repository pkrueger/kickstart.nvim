return {
  'pkrueger/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'tokyonight-storm'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
  config = function()
    require('tokyonight').setup {
      transparency = true,
      day_brightness = 0.5,
      on_highlights = function(hl, c)
        local prompt = '#2d3149'
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
          bg = c.bg_dark,
          fg = '#79A1F6',
        }
        hl.TelescopePromptNormal = {
          bg = prompt,
        }
        hl.TelescopePromptBorder = {
          bg = prompt,
          fg = '#79A1F6',
        }
        hl.TelescopePromptTitle = {
          bg = prompt,
          fg = '#79A1F6',
        }
        hl.TelescopePreviewTitle = {
          bg = c.bg_dark,
          fg = '#79A1F6',
        }
        hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = '#79A1F6',
        }
      end,
    }
  end,
}
