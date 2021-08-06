local initializationOptions = {
  documentFormatting = true,
  hover = true,
  documentSymbol = true,
  codeAction = true,
  completion = true
}
local flake8 = {
  LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
  lintStdin = true,
  lintFormats = {"%f:%l:%c: %m"}
}
-- Python
local isort = {formatCommand = "isort --quiet -", formatStdin = true}
local yapf = {formatCommand = "yapf --quiet", formatStdin = true}
-- Lua
local luaFormat = {
  formatCommand = "lua-format -i --no-keep-simple-function-one-line --column-limit=100",
  formatStdin = true
}
local prettier = {
  formatCommand = "./node_modules/.bin/prettier ${--tab-width:tabWith} ${--single-quote:singleQuote} --parser html",
  rootMarkers = {'package.json'},
}

require'lspconfig'.efm.setup{
  init_options = {documentFormatting = true},
  filetypes = {"lua", "python", "javascript", "javascriptreact"},
  settings = {
    rootMarkers = {".git/"},
    languages = {lua = {luaFormat},
    python = {isort, yapf},
    javascriptreact = {prettier},
    javascript = {}
    } 
  },
}
-- local eslint = {
--   lintCommand = './node_modules'
-- }

local shellcheck = {
  LintCommand = 'shellcheck -f gcc -x',
  lintFormats = {'%f:%l:%c: %trror: %n', '%f:%l:%c: %tarning: %n', "%f:%l:%c: %tote: %m"}
}
