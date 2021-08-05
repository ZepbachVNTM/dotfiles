local wk = require("which-key")

require("which-key").setup {
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
  },
}

wk.register({
  f = {
    name = "file", -- optional group name
    w = { ":w<CR>", "Write" },
    q = { ":q<CR>", "Quit"},
    a = { ":wq<CR>", "Write and quit" },
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false}, -- additional options for creating the keymap
    n = { "New File" }, -- just a label. don't create any mapping
    e = "Edit File", -- same as above
    ["1"] = "which_key_ignore",  -- special label to hide it in the popup
    b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
  },
  g = {
    name = "git",
    a = { ":Telescope git_commits<CR>", "Commit" },
    b = { ":Telescope git_bcommits<CR>", "Bcommit" },
    c = { ":Telescope git_status<CR>", "Status" },
    d = { ":Telescope git_branches<CR>", "Branch" }
  },
  r = { ":so %<CR>", "Reload" },
  c = {
    name = "Codi",
    e = { ":Codi<CR>", "Enable Codi" },
    d ={ ":Codi!<CR>", "Disable Codi" }
  }
}, { prefix = "<leader>" })

