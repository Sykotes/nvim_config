vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("core.options")
require("core.keymaps")
-- require("core.autocmd")
require("core.fmt")
require("mason").setup()
