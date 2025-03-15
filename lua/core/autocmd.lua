local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- pattern = { "*.py" },
-- desc = "auto format python on save" ,
-- callback = function ()
-- vim.cmd(":silent !isort .")
-- vim.cmd(":silent !black .")
-- end,
-- group = autocmd_group
-- })
