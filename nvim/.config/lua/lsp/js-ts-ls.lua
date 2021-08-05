require'lspconfig'.tsserver.setup{
  cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},
  on_attach = require'lsp'.common_on_attach,
  settngs = {documentFormatting = false}
}
