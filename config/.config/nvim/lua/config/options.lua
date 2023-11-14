-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.clipboard = ""
opt.foldcolumn = "1"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
opt.ff = "unix"

local g = vim.g
g.node_host_prog = "/clang64/lib/neovim-node-host.cmd"
