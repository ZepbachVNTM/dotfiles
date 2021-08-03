require'nvim-treesitter.configs'.setup{
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false
  },
  rainbow = {
    enable = true,
    colors = {
      "#bf616a",
      "#d08770",
      "#ebcb8b",
      "#a3be8c",
      "#88c0d0",
      "#5e81ac",
      "#b48ead"
    }
  }
}
vim.g.rainbow_active = 1
