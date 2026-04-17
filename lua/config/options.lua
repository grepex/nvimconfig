vim.cmd([[set mouse=]])
vim.cmd([[set noswapfile]])
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.cursorcolumn = false
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.number = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true

-- Smart Relative Numbers
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  pattern = "*",
  callback = function() vim.opt.relativenumber = false end,
})
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  pattern = "*",
  callback = function() vim.opt.relativenumber = true end,
})
vim.opt.relativenumber = true


