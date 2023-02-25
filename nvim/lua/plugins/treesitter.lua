require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "c", "cpp", "bash", "json", "python", "lua", "vim", "help" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true
  },
  indent = {enable = true},  
  --不同括号颜色区分
  rainbow = {
    enable = true,
    extenden_mode = true,
    max_file_lines = nil,
  }
}
