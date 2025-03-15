local switch_lang = {
	["lua"] = function()
		vim.cmd(":silent !stylua .")
	end,
	["python"] = function()
		vim.cmd(":silent !isort .")
		vim.cmd(":silent !black .")
	end,
	["haskell"] = function()
		vim.cmd(':silent !find . -name "*.hs" -type f -exec ormolu -i {} +')
	end,
}

function FormatCode()
	local ft = vim.bo.filetype
	if switch_lang[ft] then
		switch_lang[ft]()
	else
		print("No formatter set for this file type.")
	end
end

-- Map to <leader>f for formatting based on file type
vim.api.nvim_set_keymap("n", "<leader>f", ":lua FormatCode()<CR>", { noremap = true, silent = true })
