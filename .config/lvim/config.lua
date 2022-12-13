lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedark"
lvim.wrap = true
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "java", "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.plugins = {
  { "ntpeters/vim-better-whitespace" },
  { "rodjek/vim-puppet" },
  { "martinda/Jenkinsfile-vim-syntax" },
  { "thecodesmith/vim-groovy" },
  { "tpope/vim-abolish" },
  { "catppuccin/nvim" },
  { "joshdick/onedark.vim" },
  { "sheerun/vim-polyglot" },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.groovy", "Jenkinsfile", "Jenkins-release" },
  -- enable wrap mode for json files only
  command = "set tabstop=4 shiftwidth=4",
})
