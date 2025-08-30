-- vim.cmd("let g:netrw_banner = 0")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false -- does not expand tab to spaces
opt.autoindent = true
opt.wrap = false

-- search settings
opt.incsearch = true
opt.inccommand = "split"
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- windows
opt.splitright = true
opt.splitbelow = true

-- swaps & undo files
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- prefs
opt.mouse = "a"
opt.fileencoding = "utf-8"
opt.showmode = false
opt.updatetime = 100

vim.g.editorconfig = true
