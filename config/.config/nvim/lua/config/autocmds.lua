-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- local function auggroup(name)
--   return vim.api.nvim_create_augroup(name, { clear = true })
-- end
--
-- vim.api.nvim_create_autocmd("TermOpen", {
--   group = auggroup("terminal_linenumber_off"),
--   callback = function()
--     vim.opt_local.number = false
--     vim.opt_local.relativenumber = false
--   end,
-- })