local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

lspconfig.puppet.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"/home/robinoph/.local/share/nvim/mason/bin/puppet-languageserver", "--stdio"}
})
