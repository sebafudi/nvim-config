function ColorMyPencils(color)
	color = color or "ayu"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "black" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end
