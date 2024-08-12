-- Enable swap, backup, and persistant undo
vim.opt.directory = "/home/gy/nvim_swapfile/swap"
vim.opt.backupdir = "/home/gy/nvim_swapfile/backup"
vim.opt.undodir = "/home/gy/nvim_swapfile/undo"
vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.undofile = true

-- Append backup files with timestamp
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		local extension = "~" .. vim.fn.strftime("%Y-%m-%d-%H%M%S")
		vim.o.backupext = extension
	end,
})
