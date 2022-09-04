local g = vim.g
local cmd = vim.cmd

-- Disable vim builtins for faster startup time

g.loaded_gzip = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1

g.loaded_getscript = 1
g.loaded_getscriptPlugin = 1
g.loaded_vimball = 1
g.loaded_vimballPlugin = 1
g.loaded_2html_plugin = 1

g.loaded_matchit = 1
g.loaded_matchparen = 1
g.loaded_logiPat = 1
g.loaded_rrhelper = 1

-- Disable commenting for new lines

cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- Highligh yanked text

cmd [[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=350})
augroup END
]]

-- Enable undo files

cmd([[

set undodir=$HOME/.vim/undo
set undofile

]])

-- Remove trailing whitespace on save

cmd([[ au BufWritePre * :%s/\s\+$//e ]])

-- Create folds manually and let the folds be persistent

cmd([[

set foldenable
set foldmethod=manual
au BufWinLeave * mkview
au BufWinEnter * silent! loadview

]])

-- Use global clipboard

cmd [[set clipboard+=unnamedplus]]


-- save currently buffer whenever i am switching buffers
 cmd [[ set autowriteall ]]

-- Disable anoyying swap files

vim.cmd [[set noswapfile]]

-- Disable syntax highlighting for large files
vim.cmd [[ autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif ]]

require("mkoloni.mappings")
require("mkoloni.settings")
require("mkoloni.statusline")
require("mkoloni.plugins")
require("mkoloni.colors")
require("mkoloni.lsp")
require("mkoloni.completion")
