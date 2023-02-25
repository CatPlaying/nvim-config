
vim.g.mapleader = " "

local keymap = vim.keymap

--插入模式
keymap.set("i","jk","<ESC>")

--view mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


--normal mode
keymap.set("n", "<leader>v", "<C-w>v") -- 水平窗口
keymap.set("n", "<leader>s", "<C-w>s") -- 垂直窗口

keymap.set("n", "<leader>h", "<C-w>h") -- 窗口focus 左
keymap.set("n", "<leader>l", "<C-w>l") -- 窗口focus 右
keymap.set("n", "<leader>j", "<C-w>j") -- 窗口focus 上
keymap.set("n", "<leader>k", "<C-w>k") -- 窗口focus 下

-- bufferline 左右Tab切换
keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>")

--取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")


--plugins

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
--keymap.set("n", "<leader>s", ":NvimTreeFocus<CR>")
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>")

--dap debug
-- 断点
keymap.set("n", "<leader>gb", ":lua require'dap'.toggle_breakpoint()<CR>")
-- 清空断点
keymap.set("n", "<leader>gB", ":lua require'dap'.clear_all_breakpoints()<CR>")
-- run
keymap.set("n", "<leader>gr", ":lua require'dap'.run_last()<CR>")
keymap.set("n", "<leader>gR", ":lua require'dap'.run_to_cursor()<CR>")
-- continue
keymap.set("n", "<leader>gc", ":lua require'dap'.continue()<CR>")
keymap.set("n", "<leader>gn", ":lua require'dap'.step_over()<CR>")
keymap.set("n", "<leader>gs", ":lua require'dap'.step_into()<CR>")
keymap.set("n", "<leader>go", ":lua require'dap'.repl.open()<CR>")
--keymap.set("n", "<leader>gO", ":lua require'dap'.repl.close()<CR>")
keymap.set("n",
  "<leader>gO",
  "<cmd>lua require'dap'.close()<CR><cmd>lua require'dap.repl'.close()<CR><cmd>lua require'dapui'.close()<CR><cmd>DapVirtualTextForceRefresh<CR>"
  )


-- terminal
keymap.set("t", "<Esc>", "<C-\\><C-n>")
keymap.set("t", "<C-n>", "<C-\\><C-n>:FloatermNext<CR>")
keymap.set("t", "<Leader>tw", "<C-\\><C-n>:FloatermNew<CR>")
keymap.set("t", "<Leader>tt", "<C-\\><C-n>:FloatermToggle<CR>")
keymap.set("n", "<Leader>tt", ":FloatermToggle<CR>")
keymap.set("t", "<Leader>tk", "<C-\\><C-n>:FloatermKill<CR>:FloatermToggle<CR>")

-- bookmarks
keymap.set("n", "m", "<cmd>BookmarkToggle<cr>")
