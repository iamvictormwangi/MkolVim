require("mkoloni.plugins.packer")

vim.cmd([[
  let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.config/nvim/snippets/snippets.json')), "\n"))
]])
