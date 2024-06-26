--自动packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  --use "EdenEast/nightfox.nvim" --主题
  use "rebelot/kanagawa.nvim" --主题
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  --use "christoomey/vim-tmux-navigator" -- 用ctrl -hjkl来定位窗口
  use "nvim-treesitter/nvim-treesitter" --语法高亮
  use "p00f/nvim-ts-rainbow" --配合treesitter,不同括号颜色
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- 相当于 mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig",
  }

  -- 自动补全
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp-signature-help"
  --use "hrsh7th/cmp-calc"
  --use "hrsh7th/cmp-latex-symbols"

  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号

  use "akinsho/bufferline.nvim" -- buffer分割线
  use "lewis6991/gitsigns.nvim" -- 左则git提示

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',  -- 文件检索
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-packer.nvim',
      'nvim-telescope/telescope-project.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      'nvim-telescope/telescope-symbols.nvim',
      'benfowler/telescope-luasnip.nvim',
      'LinArcX/telescope-env.nvim',
    }
  }
  -- use "nvim-telescope/telescope-live-grep-raw.nvim"
  use "nvim-telescope/telescope-live-grep-args.nvim"                                                                       

  use "MattesGroeger/vim-bookmarks"
  use "tom-anders/telescope-vim-bookmarks.nvim"

  use { "mhinz/vim-startify" } -- start

  -- debug
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
  use "theHamsta/nvim-dap-virtual-text"
  -- vimspector 

  -- neovim加速
  use("nathom/filetype.nvim")
  --  搜索美化 
  use {'kevinhwang91/nvim-hlslens'}

  --terminal
  use ('voldikss/vim-floaterm')

  -- todo Comment
  use {
    "folke/todo-comments.nvim",
    requires = {"nvim-lua/plenary.nvim"}
  }

  -- format
  use { 'mhartington/formatter.nvim' }

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  })

  --clip
  -- use {"AckslD/nvim-neoclip.lua"}
  use {
    'AckslD/nvim-neoclip.lua',
    requires = {
      {'kkharji/sqlite.lua', module = 'sqlite'},
      {'nvim-telescope/telescope.nvim'},
    },
    config = function()
      require('plugins.neoclip')
    end,
  }
    use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
