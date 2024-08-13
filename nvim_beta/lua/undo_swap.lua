USER = os.getenv("USER")
local curr_group = vim.fn.system("id -ng 2> /dev/null | tr -d '\n'")

SWAPDIR = "/home/" .. curr_group .. "/nvim_swapfile/swap//"
BACKUPDIR = "/home/" .. curr_group .. "/nvim_swapfile/backup//"
UNDODIR = "/home/" .. curr_group .. "/nvim_swapfile/undo//"

if vim.fn.isdirectory(SWAPDIR) == 0 then
	vim.fn.mkdir(SWAPDIR, "p", "0o700")
end

if vim.fn.isdirectory(BACKUPDIR) == 0 then
	vim.fn.mkdir(BACKUPDIR, "p", "0o700")
end

if vim.fn.isdirectory(UNDODIR) == 0 then
	vim.fn.mkdir(UNDODIR, "p", "0o700")
end

-- Enable swap, backup, and persistant undo
vim.opt.directory = SWAPDIR
vim.opt.backupdir = BACKUPDIR
vim.opt.undodir = UNDODIR
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = false

-- Append backup files with timestamp
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		local extension = "~" .. vim.fn.strftime("%Y-%m-%d-%H%M%S")
		vim.o.backupext = extension
	end,
})
