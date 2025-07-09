local nnoremap = require("utils/nnoremap")

nnoremap([[<space>1]],[[1gt<cr>]])
nnoremap([[<space>2]],[[2gt<cr>]])
nnoremap([[<space>3]],[[3gt<cr>]])
nnoremap([[<space>4]],[[4gt<cr>]])
nnoremap([[<space>5]],[[5gt<cr>]])
nnoremap([[<space>6]],[[6gt<cr>]])
nnoremap([[<space>7]],[[7gt<cr>]])
nnoremap([[<space>8]],[[8gt<cr>]])
nnoremap([[<space>9]],[[9gt<cr>]])
nnoremap([[<space>0]],[[10gt<cr>]])
nnoremap([[<leader>bt]],[[:tabnew<cr>]])
nnoremap([[<leader>btt]],[[:terminal<cr>]])
nnoremap([[,qt]],[[:tabonly<cr>]])
nnoremap([[<leader>q]],[[:tabclose<cr>]])


if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
nnoremap([[<C-1>]],[[<Cmd>BufferLineGoToBuffer 1<CR>]])
nnoremap([[<C-2>]],[[<Cmd>BufferLineGoToBuffer 2<CR>]])
nnoremap([[<C-3>]],[[<Cmd>BufferLineGoToBuffer 3<CR>]])
nnoremap([[<C-4>]],[[<Cmd>BufferLineGoToBuffer 4<CR>]])
nnoremap([[<C-5>]],[[<Cmd>BufferLineGoToBuffer 5<CR>]])
nnoremap([[<C-6>]],[[<Cmd>BufferLineGoToBuffer 6<CR>]])
nnoremap([[<C-7>]],[[<Cmd>BufferLineGoToBuffer 7<CR>]])
nnoremap([[<C-8>]],[[<Cmd>BufferLineGoToBuffer 8<CR>]])
nnoremap([[<C-9>]],[[<Cmd>BufferLineGoToBuffer 9<CR>]])
nnoremap([[<C-0>]],[[<Cmd>BufferLineGoToBuffer 10<CR>]])
end
if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1  then
nnoremap([[<D-n>]],[[:tabnew<cr>]])
nnoremap([[<D-w>]],[[:tabclose<cr>]])
end
