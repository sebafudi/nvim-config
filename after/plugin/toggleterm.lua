local system = vim.loop.os_uname().sysname
local shell = system == "Linux" and "zsh" or "powershell"
require("toggleterm").setup({
	shell = shell,
	start_in_insert = false,
})

ColorMyPencils()

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("n", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("n", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("n", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("n", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("n", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

vim.keymap.set("n", "<leader>`", vim.cmd.ToggleTerm, { silent = true })
