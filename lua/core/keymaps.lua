local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex)

-- Yank to system clipboard with <leader>y
map({ "n", "v" }, "<leader>y", '"+y')

-- Paste from system clipboard with <leader>p
map("n", "<leader>p", '"+p')
map("v", "<leader>p", '"+P')

-- Remove all highlighting
vim.api.nvim_set_keymap("n", "<Esc>", ':let @/ = ""<CR><Esc>', { noremap = true, silent = true })

vim.opt.timeoutlen = 300
