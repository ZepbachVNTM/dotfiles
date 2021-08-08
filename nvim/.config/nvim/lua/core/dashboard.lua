local g = vim.g
local cmd = vim.cmd

g.dashboard_custom_header = zvim.dashboardHeader

g.dashboard_default_executive = 'telescope'
g.dashboard_custom_section = {
  a = {description = {' Find File          '}, command = 'Telescope find_files hidden=true'},
  b = {description = {' Recently Used Files'}, command = 'Telescope oldfiles hidden=true'},
  d = {description = {' Find Word          '}, command = 'Telescope live_grep'},
  e = {description = {' Settings           '}, command = ':e ~/.config/nvim/lua/settings.lua'}
  -- e = {description = {' Marks              '}, command = 'Telescope marks'}
}
g.dashboard_footer = { "zepbachvntm.blogspot.com" }
