local o = vim.o

if zvim.systemClipboard == true then
  o.clipboard = 'unnamedplus'
else
  o.clipboard = ''
end

if zvim.wordWrap == true then
  o.wrap = true
else
  o.wrap = false
end
