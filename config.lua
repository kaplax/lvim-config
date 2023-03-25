--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
local telescope = require("plugins.telescope")

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "onedark"
lvim.builtin.which_key.setup.plugins.marks = true
lvim.builtin.which_key.setup.plugins.registers = true
lvim.builtin.which_key.setup.plugins.presets.nav = true
-- lvim.builtin.terminal.open_mapping = [[<c-t>]]

vim.opt.relativenumber = true
vim.opt.timeoutlen = 250
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.keys.insert_mode["jk"] = false
lvim.keys.insert_mode["kj"] = false
lvim.keys.insert_mode["jj"] = false

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.

local _, actions = pcall(require, "telescope.actions")

lvim.builtin.telescope.pickers = telescope.get_pickers(actions)
lvim.builtin.telescope.defaults.pickers = telescope.get_pickers(actions)


-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash", "c",
  "javascript", "json",
  "lua", "python",
  "typescript", "tsx",
  "css", "rust",
  "java", "yaml",
  "go",
}

lvim.format_on_save = false
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true


local neoscroll = require("plugins.neoscroll")
local lastplace = require("plugins.lastplace")
local todo_comments = require("plugins.todo-comments")
local nvim_colorizer = require("plugins.nvim-colorizer")
local markdown_preview = require("plugins.markdown-preview")
local hop = require("plugins.hop")

-- Additional Plugins
lvim.plugins = {
  hop.setup(),
  neoscroll.setup(),
  lastplace.setup(),
  todo_comments.setup(),
  nvim_colorizer.setup(),
  markdown_preview.setup(),
  { "tpope/vim-unimpaired" },
  { "navarasu/onedark.nvim" },
  { "tpope/vim-surround" },
  { "APZelos/blamer.nvim" },
}
