-- Toggleterm: A plugin to easily manage multiple terminal windows
return {
  'akinsho/toggleterm.nvim',
  version = "*",
  keys = {
    { '<leader>$', '<cmd>+ToggleTerm<cr>', desc = 'New terminal' },
    { '<S-esc>',   '<C-\\><C-n>',          mode = 't' } -- Shift-esc for easier term exiting
  },
  opts = {
    open_mapping = [[<c-\>]],
  }
}
