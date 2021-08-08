local function register_mappings(mappings, default_options)
  for mode, mode_mappings in pairs(mappings) do
    for _, mapping in pairs(mode_mappings) do
      local options = #mapping == 3 and table.remove(mapping) or default_options
      local prefix, cmd = unpack(mapping)
      pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
    end
  end
end

vim.g.mapleader = zvim.leader

local mappings = {
  i = { -- Insert mode
    -- I hate escape
    { "jk", "<ESC>" },
    { "kj", "<ESC>" },
    { "jj", "<ESC>" },
    { "<F8>", "<Plug>MarkdownPreview" },
    { "<F9>", "<Plug>StopMarkdownPreview" }
  },
  n = {
    { "<Space>e", ":NvimTreeToggle<CR>" },
    { "<TAB>", ":BufferNext<CR>" },
    { "<S-TAB>", ":BufferPrev<CR>" },
    { "<S-x>", ":BufferClose<CR>" },
    { "<C-_>", ":CommentToggle<CR>" },
    { "<F8>", "<Plug>MarkdownPreview" },
    { "<F9>", "<Plug>StopMarkdownPreview" }
  },
  v = {
    { "<C-_>", ":CommentToggle<CR>" },
  }
}

register_mappings(mappings, { silent = true, noremap = true })

vim.cmd 'inoremap <expr> <c-j> ("\\<C-n>")'
vim.cmd 'inoremap <expr> <c-k> ("\\<C-p>")'
vim.api.nvim_set_keymap("n", "gcc", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "gc", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("v", "<C-A>", "<Plug>kommentary_visual_default<C-c>", {})
