require("lazy").setup({


 "rebelot/kanagawa.nvim", --主题
  {
    'nvim-lualine/lualine.nvim',
    dependencies= { 'kyazdani42/nvim-web-devicons', opt = true }
  },


{
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  },
  --use "christoomey/vim-tmux-navigator" -- 用ctrl -hjkl来定位窗口
  "nvim-treesitter/nvim-treesitter", --语法高亮
  "p00f/nvim-ts-rainbow", --配合treesitter,不同括号颜色

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- 相当于 mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig",

  -- 自动补全
   "hrsh7th/nvim-cmp",
   "hrsh7th/cmp-nvim-lsp",
   "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
   "saadparwaiz1/cmp_luasnip",
   "rafamadriz/friendly-snippets",
   "hrsh7th/cmp-path", -- 文件路径
   "hrsh7th/cmp-buffer",
   "hrsh7th/cmp-cmdline",
   "hrsh7th/cmp-nvim-lsp-signature-help",

   "numToStr/Comment.nvim", -- gcc和gc注释
  "windwp/nvim-autopairs", -- 自动补全括号

  "akinsho/bufferline.nvim", -- buffer分割线
  "lewis6991/gitsigns.nvim", -- 左则git提示

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4', -- 文件检索
    dependencies = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-packer.nvim',
      'nvim-telescope/telescope-project.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      'nvim-telescope/telescope-symbols.nvim',
      'benfowler/telescope-luasnip.nvim',
      'LinArcX/telescope-env.nvim',
    }
  },
  -- use "nvim-telescope/telescope-live-grep-raw.nvim"
  "nvim-telescope/telescope-live-grep-args.nvim",                                                                       

  "MattesGroeger/vim-bookmarks",
  "tom-anders/telescope-vim-bookmarks.nvim",

  { "mhinz/vim-startify" }, -- start

  -- debug
  { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"} },
  "theHamsta/nvim-dap-virtual-text",
  -- vimspector 

  -- neovim加速
  "nathom/filetype.nvim",
  --  搜索美化 
  'kevinhwang91/nvim-hlslens',

  --terminal
  --use ('voldikss/vim-floaterm')

  -- todo Comment
  {
    "folke/todo-comments.nvim",
    dependencies = {"nvim-lua/plenary.nvim"}
  },

  -- format
  --use { 'mhartington/formatter.nvim' }

  {
    "kylechui/nvim-surround",
    --tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },

  --clip
  -- use {"AckslD/nvim-neoclip.lua"}
  --{
  --  'AckslD/nvim-neoclip.lua',
  --  requires = {
  --    {'kkharji/sqlite.lua', module = 'sqlite'},
  --    {'nvim-telescope/telescope.nvim'},
  --  },
  --  config = function()
  --    require('plugins.neoclip')
  --  end,
  --},
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  },
})
