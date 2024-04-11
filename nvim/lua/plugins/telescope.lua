require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-K>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

-- telescope.load_extension('packer')
-- telescope.load_extension('project')
-- telescope.load_extension('env')
-- telescope.load_extension('file_browser')
-- telescope.load_extension('luasnip')
--
--telescope.load_extension('session-lens')
-- telescope.load_extension('notify')



local builtin = require('telescope.builtin')

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了

-- 搜索(telescope)
-- function _G.grep_string_the_file()
--   require('telescope.builtin').grep_string({
--       grep_open_files = true
--   })
-- end
--
-- function _G.live_grep_the_file()
--   require('telescope.builtin').live_grep({
--       grep_open_files = true
--   })
-- end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- 环境里要安装ripgrep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fm', "<cmd>Telescope vim_bookmarks all<cr>", {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- 搜索字符串(当前文件)
-- vim.keymap.set("n", "<Leader>fj", "<cmd>lua _G.live_grep_the_file()<cr>")
-- 搜索光标所在字符串(当前文件)
-- vim.keymap.set("n", "<Leader>fc", "<cmd>lua _G.grep_string_the_file()<cr>")
vim.keymap.set("n", "<Leader>fw", builtin.grep_string, {})
-- 搜索TODO LIST
vim.keymap.set("n", "<Leader>ft", "<cmd>TodoTelescope<cr>")
