--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
vim.opt.clipboard = "unnamedplus"
-- general
lvim.transparent_window = true
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
-- Enable text wrapping
vim.opt.wrap = true

-- keymappings [view all the defaults by pressing <leader>Lk]
-- Change leader from default space to comma
lvim.leader = ","
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.dashboard.active = false
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "json",
  "lua",
  "python",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Additional Plugins
 lvim.plugins = {
     {"rodjek/vim-puppet"},
     {"vim-syntastic/syntastic"},
     {"tpope/vim-surround"},
     {"ntpeters/vim-better-whitespace"},
     {"martinda/Jenkinsfile-vim-syntax"},
     {"junegunn/vim-easy-align"},
     {"lukas-reineke/indent-blankline.nvim"},
     {"andymass/vim-matchup"},
     {"rcarriga/nvim-notify"},
 }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
lvim.autocommands.custom_groups = {
  {"BufWinEnter", "*.pp", "set formatoptions=cro"},
}
