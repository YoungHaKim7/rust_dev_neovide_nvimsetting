local nnoremap = require("utils/nnoremap")

-- Binding Same as VSCODE when using Neovide
if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
nnoremap("<leader>e", ":NvimTreeToggle<CR>")
else
nnoremap("<leader>ee", ":NvimTreeToggle<CR>")
end

