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

--require("plugins.plugins-setup")
require("core.options")
require("core.keymaps")
--
---- plugins
require("plugins.lazy")
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins/cmp")
--
require("plugins/comment")
require("plugins/autopairs")
require("plugins/bufferline")
require("plugins/gitsigns")
require("plugins/telescope")
--
--require("plugins.dap.dap-init")
require("plugins.filetype")
require("plugins.hlslens")
--require("plugins.floaterm")
require("plugins.todo-comments")
--require("plugins.formatter")
require("plugins.bookmarks")
