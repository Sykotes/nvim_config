local function format_haskell()
  vim.cmd(":silent !find . -name \"*.hs\" -type f -exec ormolu -i {} +")
end

local function format_python()
  vim.cmd(":silent !isort .")
  vim.cmd(":silent !black .")
end

function FormatCode()
  local ft = vim.bo.filetype
  if ft == "python" then format_python()
  elseif ft == "haskell" then format_haskell()
  else print("No formatter set for this file type.")
  end
end

-- Map to <leader>f for formatting based on file type
vim.api.nvim_set_keymap("n", "<leader>f", ":lua FormatCode()<CR>", { noremap = true, silent = true })

