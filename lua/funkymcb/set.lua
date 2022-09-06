vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.hidden = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.hls = true
vim.opt.nrformats = "octal"

vim.opt.wrap = false
vim.opt.wrapscan = false

vim.opt.scrolloff = 10
vim.opt.colorcolumn = "80"
vim.opt.inccommand = "nosplit"
vim.opt.foldmethod = "manual"
vim.opt.updatetime = 100
vim.opt.mouse = "a"
