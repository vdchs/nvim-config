vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = 'plugins' }
})

-- Enable highlighting on yank
-- see https://github.com/vscode-neovim/vscode-neovim/issues/856
vim.cmd [[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup="IncSearch", timeout=200 }
augroup END
]]

-- VIM OPTIONS
-- use system clipboard
vim.o.clipboard = 'unnamedplus'
--easier seaching
vim.o.ignorecase = true
vim.o.smartcase = true

-- SET UP KEYBINDS
-- VSCode functions
if vim.g.vscode then
  require 'plugins/vscode'
end
