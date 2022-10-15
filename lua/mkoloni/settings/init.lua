local wo = vim.wo
local o = vim.o
local opt = vim.opt

-- Searching

o.hlsearch   = false
o.updatetime = 250
o.ignorecase = true
o.ignorecase = true
o.smartcase  = true
o.smartcase  = true
wo.signcolumn = 'no'
o.synmaxcol = 240

-- Indenting

o.smarttab    = true
o.smartindent = true
o.expandtab   = true
o.tabstop     = 2
o.softtabstop = 2
o.shiftwidth  = 2

-- Add Mouse support

o.mouse        = 'a'
opt.mousefocus = true

-- Completion and language

o.completeopt = "menuone,noinsert,noselect"
o.wildmode    = "longest,full"
o.fileencoding = "utf-8"
o.spell        = false
opt.completeopt = "menu,menuone,noselect"

-- General

o.splitbelow = true
o.splitright = true
o.scrolloff          = 12
o.sidescrolloff      = 8
o.hidden = true
o.lazyredraw = true
o.wrap = true
o.cmdheight = 0
o.ls = 0
