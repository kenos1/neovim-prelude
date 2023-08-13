-- Mini.basics: Sensible defaults for Neovim
return {
  {
    'echasnovski/mini.basics',
    event = 'VimEnter',
    opts = {
      options = {
        basic = true,
        extra_ui = true,
        win_borders = 'solid',
      },
      mappings = {
        basic = true,
        option_toggle_prefix = [[\]],
        windows = true,
        move_with_alt = true,
      },
      autocommands = {
        basic = true,
        relnum_in_visual_mode = true,
      },
    }
  }
}
