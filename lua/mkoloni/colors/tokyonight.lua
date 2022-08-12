vim.o.termguicolors = true

-- vim.o.background = "dark"

-- vim.cmd "colorscheme gruvbox"

-- Example config in Lua
vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
-- vim.g.tokyonight_transparent = vim.g.transparent_enabled

-- Load the colorscheme
vim.cmd [[colorscheme tokyonight]]
vim.g.tokyonight_style = "storm"

-- Make neovim transparent
vim.cmd([[

" highlight Normal ctermbg=none
" highlight NonText ctermbg=none
]])
