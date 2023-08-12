-- Treesitter: Better syntax highlighting and more!
return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    version = false,
    config = function()
      require 'nvim-treesitter.configs'.setup {
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true,
        ensure_installed = {
          "bash",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "regex",
          "vim",
          "vimdoc",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      }
    end,
  }
}
