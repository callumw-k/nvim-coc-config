local o = vim.opt
o.fileencoding = "uft-8"
o.hidden = true
o.cmdheight = 2
o.updatetime = 300
o.hlsearch = false
o.scrolloff = 8
o.number = true
o.incsearch = true
o.relativenumber = true
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.colorcolumn = "80"
o.signcolumn = "yes"

vim.cmd([[set nowrap]], true)

vim.cmd([[
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
