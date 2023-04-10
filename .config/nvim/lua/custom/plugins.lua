local plugins = {
  {
    "rodjek/vim-puppet",
    ft = 'puppet',
    config = function(_)
      vim.g.puppet_align_hashes = 1
    end
  },
  {
    "thecodesmith/vim-groovy",
    ft = 'groovy'
  },
  {
    "martinda/Jenkinsfile-vim-syntax"
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
       ensure_installed = {
         "lua-language-server",
         "prettier",
         "stylua"
       },
     },
   },
  {
    "ThePrimeAgen/vim-be-good",
    lazy = false
  }
}
return plugins
