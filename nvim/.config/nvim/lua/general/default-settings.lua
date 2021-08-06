zvim = {
  colorschemes = "onedark",
  leader = "space",
  systemclipboard = false
}
local o = vim.o
local opt = vim.opt

DATA_PATH = vim.fn.stdpath('data')
CACHE = vim.fn.stdpath('cache')

o.hidden = true
if zvim.systemclipboard == true then
  o.clipboard = 'unnamedplus'
else
  o.clipboard = ''
end
o.mouse = 'a'
o.expandtab = true
o.tabstop = 2
o.shiftwidth = 2
o.background = "dark"
opt.termguicolors = true
o.swapfile = false
o.ruler = true
o.smarttab = true
o.cursorline = true
o.showmode = false
o.encoding = "utf-8"
o.backup = false

vim.cmd 'command! -nargs=0 Prettier :CocCommand prettier.formatFile'
