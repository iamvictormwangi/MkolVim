local g = vim.g
local api = vim.api

-- Leader Key

g.mapleader = " "
g.maplocalleader = " "

-- Repeat Key

api.nvim_set_keymap(
  'n',
  's',
  '.',
  { noremap = true }
)

-- Indenting Keys

api.nvim_set_keymap(
  'v',
  '<',
  '<gv',
  { noremap = true }
)

api.nvim_set_keymap(
  'v',
  '>',
  '>gv',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<Tab>',
  '>>',
  { noremap = true }
)

api.nvim_set_keymap(
  'v',
  '<Tab>',
  '>gv',
  { noremap = true }
)

-- Write & Quit

api.nvim_set_keymap(
  'n',
  '<leader>w',
  '<cmd>w<CR>',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>q',
  '<cmd>q<CR>',
  { noremap = true }
)

api.nvim_set_keymap(
  'c',
  'Wq',
  'wq',
  { noremap = true }
)

api.nvim_set_keymap(
  'c',
  'W',
  'w',
  { noremap = true }
)

-- Toggle File Tree

api.nvim_set_keymap(
  'n',
  '<leader>e',
  '<cmd>Neotree<Enter>',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>t',
  '<cmd>lua require("FTerm").toggle()<CR>',
  { noremap = true }
)

-- Buffers and Windows

api.nvim_set_keymap(
  'n',
  '<leader>n',
  '<C-w>w',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>l',
  '<cmd>bn<Enter>',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>h',
  '<cmd>bp<Enter>',
  { noremap = true }
)

-- Going down a line

api.nvim_set_keymap(
  'n',
  '<CR>',
  'o<ESC>',
  { noremap = true }
)

-- Handling Line Wraps

api.nvim_set_keymap(
  'n',
  '0',
  'g0',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '$',
  'g$',
  { noremap = true }
)

-- Auto center the text under the cursor

api.nvim_set_keymap(
  'n',
  'k',
  'gkzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  'j',
  'gjzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'v',
  'k',
  'kzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'v',
  'j',
  'jzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  'n',
  'nzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  'N',
  'Nzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  'G',
  'Gzz',
  { noremap = true }
)

-- Instead of hitting enter

api.nvim_set_keymap(
  'c',
  'jj',
  '<Cr>',
  { noremap = true }
)

-- Emmet trigger key

vim.cmd [[ imap <c-o> <c-y>,]]


-- Code Action Trigger

api.nvim_set_keymap(
  'n',
  '<leader>p',
  '<cmd>CodeActionMenu<Cr>',
  { noremap = true }
)

-- Color Picker

api.nvim_set_keymap(
  'n',
  '<leader>p',
  '<cmd>PickColor<Cr>',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader><leader>',
  '<cmd>WhichKey<Cr>',

  { noremap = true }
)

api.nvim_set_keymap(
 'n',
 '<leader>up',
 '<cmd>resize +2<Cr>',
 {noremap = true}
)


api.nvim_set_keymap(
 'n',
 '<leader>left',
 '<cmd>resize +2<Cr>',
 {noremap = true}
)

api.nvim_set_keymap(
 'n',
 '<leader>right',
 '<cmd>resize -2<Cr>',
 {noremap = true}
)

