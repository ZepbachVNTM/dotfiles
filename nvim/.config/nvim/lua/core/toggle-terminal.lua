local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = 'float',
  hidden = true
})

require("toggleterm").setup{
  size = 5,
  shade_terminals = true,
  hide_numbers = true,
  shade_filetypes = {},
  start_in_insert = true,
  insert_mappings = true,
  open_mapping = [[<c-z>]],
  direction = 'float',
  persist_size = true,
  shell = vim.o.shell,
  float_opts = {
    width = 75,
    height = 20,
    winblend = 0,
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  }
}

-- Lazygit
function lazygit_toggle()
  lazygit:toggle()
end
