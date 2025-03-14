local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex) 

-- Yank to system clipboard with <leader>y
map({ "n", "v" }, "<leader>y", '"+y')

-- Paste from system clipboard with <leader>p
map("n", "<leader>p", '"+p')
map("v", "<leader>p", '"+P')

vim.opt.timeoutlen = 300
