local o = vim.o

if zvim.systemclipboard == true then
  o.clipboard = 'unnamedplus'
else
  o.clipboard = ''
end
