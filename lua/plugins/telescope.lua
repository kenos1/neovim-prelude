-- Telescope: A fuzzy finder
return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    keys = {
      -- Search keybinds
      { '<leader>sf', '<cmd>Telescope find_files<cr>',   desc = 'Files' },
      { '<leader>sg', '<cmd>Telescope live_grep<cr>',    desc = 'Live grep' },
      { '<leader>sb', '<cmd>Telescope buffers<cr>',      desc = 'Buffers' },

      -- UI keybinds
      { '<leader>uc', '<cmd>Telescope colorscheme<cr>',  desc = 'Set colorscheme' },
      { '<leader>uh', '<cmd>Telescope highlights<cr>',   desc = 'Highlights' },

      -- Git keybinds
      { '<leader>gs', '<cmd>Telescope git_status<cr>',   desc = 'Status' },
      { '<leader>gb', '<cmd>Telescope git_branches<cr>', desc = 'Branches' },
      { '<leader>gc', '<cmd>Telescope git_commits<cr>',  desc = 'Commits' },

      -- LSP Keybinds
      { '<leader>ld', '<cmd>Telescope diagnostics<cr>',  desc = 'Diagnostics' },
    },
    cmd = "Telescope",
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {},
    -- NvChad Telescope theme
    -- init = function()
    --   vim.api.nvim_create_autocmd({ "ColorScheme" }, {
    --     callback = function()
    --       local normal = vim.api.nvim_get_hl(0, { name = 'Normal', link = false })
    --       local fg, bg = normal.fg, normal.bg
    --       local bg_alt = vim.api.nvim_get_hl(0, { name = 'Visual', link = false }).bg
    --       local primary = vim.api.nvim_get_hl(0, { name = 'Error', link = false }).fg
    --       local secondary = vim.api.nvim_get_hl(0, { name = 'String', link = false }).fg
    -- 
    --       vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = bg_alt, bg = bg })
    --       vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = bg })
    --       vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg = bg, bg = bg })
    --       vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = bg })
    --       vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { fg = bg, bg = secondary })
    --       vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = bg_alt, bg = bg_alt })
    --       vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { fg = fg, bg = bg_alt })
    --       vim.api.nvim_set_hl(0, 'TelescopePromptPrefix', { fg = primary, bg = bg_alt })
    --       vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { fg = bg, bg = primary })
    --       vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg = bg, bg = bg })
    --       vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = bg })
    --       vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { fg = bg, bg = bg })
    --     end,
    --   })
    -- end
  }
}
