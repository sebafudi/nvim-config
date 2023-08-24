vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({ "n", "i" }, "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

vim.keymap.set("n", "<A-Left>", function()
	vim.cmd.wincmd("h")
end)
vim.keymap.set("n", "<A-Right>", function()
	vim.cmd.wincmd("l")
end)
vim.keymap.set("n", "<A-Up>", function()
	vim.cmd.wincmd("k")
end)
vim.keymap.set("n", "<A-Down>", function()
	vim.cmd.wincmd("j")
end)

print(vim.cmd.win)
