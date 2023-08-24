local on_save = vim.api.nvim_create_augroup("on_save", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePre" }, { group = on_save, command = "undojoin | Neoformat" })
