local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
  on_attach = function()
    vim.api.nvim_exec_autocmds('User', { pattern = 'LspAttached' })
  end
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config,
  lsp_defaults
)

lspconfig.pylsp.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})

lspconfig.rome.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})


lspconfig.vuels.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})



--[[lspconfig.grammarly.setup({]]
  --[[single_file_support = true,]]
  --[[on_attach = function(client, bufnr)]]
    --[[lspconfig.util.default_config.on_attach(client, bufnr)]]
    --[[vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })]]
    --[[vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })]]
    --[[vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })]]
    --[[vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })]]
    --[[vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })]]
    --[[vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })]]
    --[[require "lsp-format".on_attach(client)]]
  --[[end]]
--[[})]]

lspconfig.tailwindcss.setup({
  single_file_support = true,
})

require 'lspconfig'.sumneko_lua.setup({
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim', 'use' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})

lspconfig.clangd.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})

lspconfig.sqlls.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})

lspconfig.tsserver.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})

lspconfig.html.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})

lspconfig.cssls.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})

lspconfig.cssmodules_ls.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})

lspconfig.jsonls.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    require "lsp-format".on_attach(client)
  end
})
