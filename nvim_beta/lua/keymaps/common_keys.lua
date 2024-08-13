local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

vim.g.mapleader = " "

-- save
nnoremap("<C-s>", [[:w!<CR>]])
-- Disable Ctrl +
nnoremap("<C-z>", [[<nop>]])
-- Quick Replace of Word
-- nnoremap("S", [[:%s//g<Left><Left>]])
nnoremap("<leader>rnn", [[:%s//gc<Left><Left><Left>]])

nnoremap(",<leader>", [[:set hlsearch!<CR>]])
-- SymbolOutline
nnoremap("<leader>o", ":SymbolsOutline<CR>")
-- tagbar toggle
-- nnoremap("<leader>ov", ":TagbarToggle<CR>")

-- TroubleToggle
nnoremap("<leader>t", ":Trouble<CR>")
nnoremap("<leader>e", ":NvimTreeToggle<CR>")

-- buffer bn bn
nnoremap("H", ":bp<CR>")
nnoremap("L", ":bn<CR>")
nnoremap("<leader>bo", ":on<CR>")
-- Terminal(Toggleterm)
nnoremap("<C-t>t", ":ToggleTerm direction=float<CR>")
nnoremap("<C-t>tv", ":ToggleTerm direction=vertical<CR>")

-- Disable Q
-- nnoremap([[<silent> Q]], [[nop]])

-- Better tabbing
vnoremap("<", "<gv")
vnoremap(">", ">gv")
-- MoveLine Up & Down
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Map Ctrl-W to delete the previous word in insert mode.
inoremap("<C-w>", "<C-\\><C-o>dB")
inoremap("jk", "<esc>")

-- Esc and Clear Highligh
nnoremap("<esc>", ":noh<return><esc>")

-- Yank Whole Line
nnoremap("Y", "y$<CR>")
