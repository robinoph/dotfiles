local plugins = {
  {
    "rodjek/vim-puppet",
    ft = 'puppet',
    config = function(_)
      vim.g.puppet_align_hashes = 1
    end
  },
  {
    "martinda/Jenkinsfile-vim-syntax",
    lazy = false,
  },
  {
    "thecodesmith/vim-groovy",
    ft = 'groovy',
    event = 'BufEnter Jenkinsfile'
  },
  {
    "neovim/nvim-lspconfig",
        dependencies = {
          "jose-elias-alvarez/null-ls.nvim",
          config = function()
            require "custom.configs.null-ls"
          end,
        },
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
  },
  {
    "catppuccin/nvim",
    lazy = false
  }
}
return plugins
