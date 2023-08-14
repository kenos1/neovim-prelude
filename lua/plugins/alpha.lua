-- Alpha: A startup menu
return {
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      dashboard.section.header.val = {
        [[                                                  ]],
        [[                                                  ]],
        [[                                                  ]],
        [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
        [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
        [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
        [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
        [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
        [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
      }
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", "<cmd>Telescope find_files <cr>"),
        dashboard.button("n", " " .. " New file", "<cmd>ene <BAR> startinsert <cr>"),
        dashboard.button("r", " " .. " Recent files", "<cmd>Telescope oldfiles <cr>"),
        dashboard.button("g", " " .. " Find text", "<cmd>Telescope live_grep <cr>"),
        dashboard.button("c", " " .. " Config", "<cmd>e $MYVIMRC <cr>"),
        dashboard.button("l", "󰒲 " .. " Lazy", "<cmd>Lazy<cr>"),
        dashboard.button("q", " " .. " Quit", "<cmd>qa<cr>"),
      }

      -- Stolen from LazyVim lol
      vim.api.nvim_create_autocmd("User", {
        pattern = "LazyVimStarted",
        callback = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          dashboard.section.footer.val = "⚡ Neovim loaded " ..
              stats.count .. " plugins in " .. ms .. "ms"
          pcall(vim.cmd.AlphaRedraw)
        end,
      })

      alpha.setup(dashboard.config)
    end,
  }
}
