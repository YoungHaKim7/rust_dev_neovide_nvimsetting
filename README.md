# rust_dev_neovide_nvimsetting
- https://github.com/codeitlikemiley/neovide-rust-neovim
  - 여기를 참조 많이 해야함(다 흡수 못함 ㅠㅠ)

# RustSnippet기본 위치

- https://github.com/hrsh7th/vim-vsnip

- ```:VsnipOpen```

- global.json위치(~/.vsnip/global.json) 

```
~/.vsnip                                                                                        at 23:46:13
❯ tree
.
└── global.json
```

# 요즘 쓰는 LspInlayHint Color Setting

- inlayhint 색깔 hex color (LunarVim Inlayhint Color Settings)

```
// 요즘 쓰는 색 240106
:hi LspInlayHint guifg=#35638f guibg=#420517
:hi Comment guifg=#35638f guibg=#420517

// 배경은 어두운 빨간색 /  글씨는 약간 밝은 색
:hi Comment guifg=#8aaecf guibg=#4e1a1a
```

# Tabby AI 설치

- https://tabby.tabbyml.com/
  - https://github.com/TabbyML/tabby

- https://tabby.tabbyml.com/docs/extensions/installation/vim#-packernvim


# Plugins
- 무지개색 탭 좋네 ㅋ
  - https://github.com/lukas-reineke/indent-blankline.nvim

# Keymap

```
vim.g.mapleader = " "

-- Disable Ctrl +Z
nnoremap("<C-z>", [[<nop>]])
-- Quick Replace of Word
-- nnoremap("S", [[:%s//g<Left><Left>]])
nnoremap("<leader>rnn", [[:%s//gc<Left><Left>]])

nnoremap(",<leader>", [[:set hlsearch!<CR>]])
-- SymbolOutline
nnoremap("<leader>o", ":SymbolsOutline<CR>")
-- TroubleToggle
nnoremap("<leader>t", ":TroubleToggle<CR>")
nnoremap("<leader>e", ":NvimTreeToggle<CR>")

-- buffer bn bn
nnoremap("H", ":bp<CR>")
nnoremap("L", ":bn<CR>")
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

# Buffer
-- Previous
nnoremap([[bp]], [[:bprevious<CR>]])
-- Next
nnoremap([[bn]], [[:bnext<CR>]])
-- List
nnoremap([[bl]], [[:ls<CR>]])
-- Delete
nnoremap([[bd]], [[:bp <BAR> bd #<CR>]])

-- Delete all buffers except Currenly Open
nnoremap([[bq]],[[:w <bar> %bd <bar> e# <bar> bd# <CR>]])

-- TAB in normal mode will move to text buffer
nnoremap("<TAB>", ":bnext<CR>")
-- SHIFT-TAB will go back
nnoremap("<S-TAB>", ":bprevious<CR>")
```

# packer

https://github.com/wbthomason/packer.nvim

# 해결 못함
- (해결)truble.nvim오류 메세지 해결 못함
  - https://github.com/folke/trouble.nvim
- font 크기 해결 못함(neovide에서 안됨 버그인가??)neovim에서는 완벽히 잘 돌아감
  - https://neovide.dev/configuration.html

# Source 외국분 git에서 대부분 가져옴

https://github.com/codeitlikemiley/neovide-rust-neovim
