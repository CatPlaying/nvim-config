local telescope = require('telescope')
local actions   = require('telescope.actions')
local previewers = require('telescope.previewers')

telescope.setup{
  defaults = {
    color_devicons = true,
    set_env = {COLORTERM = 'truecolor'},
    vimgrep_arguments = {
      'ag',
      '--column',
      '--numbers',
      '--noheading',
      '--nocolor',
    },
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
  },
  pickers = {
  },
  extensions = {
  },
}
--
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
