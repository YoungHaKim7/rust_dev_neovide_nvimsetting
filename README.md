# rust_dev_neovide_nvimsetting
- https://github.com/codeitlikemiley/neovide-rust-neovim
  - 여기를 참조 많이 해야함(다 흡수 못함 ㅠㅠ)

# RustSnippet기본 위치

- https://github.com/hrsh7th/vim-vsnip

- 내꺼 정리 https://github.com/YoungHaKim7/rust_vim_setting/tree/main/01_Vim_NeoVim_etc_Rust_settings/snippets_Lunar_NeoVim

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

# Hack Nerd Mono Font 설치

- https://github.com/ryanoasis/nerd-fonts

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
nnoremap("<leader>rnn", [[:%s//gc<Left><Left><Left>]])

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
nnoremap([[<leader>bt]],[[:tabnew<cr>]])
nnoremap([[<leader>btt]],[[:terminal<cr>]])
nnoremap([[,qt]],[[:tabonly<cr>]])
nnoremap([[<leader>q]],[[:tabclose<cr>]])

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

# windows split
nnoremap("vsp", ":vsplit<CR>")
nnoremap("sp", ":split<CR>")



-- Resize Panes with + - or with shift + -
nnoremap("__", ":resize -5<CR>")
nnoremap("++", ":resize +5<CR>")
nnoremap("--", ":vertical resize -5<CR>")
nnoremap("==", ":vertical resize +5<CR>")


# LSP
-- Default LSP Keybindings
nnoremap("ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>", true)
nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", true)
nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>", true)
nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", true)
nnoremap("gh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", true)
nnoremap("gs", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", true)
nnoremap("go", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", true)
nnoremap("g[", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", true)
nnoremap("g]", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", true)
nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", true)
nnoremap("<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", true)
nnoremap("<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", true)
nnoremap("<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", true)

-- Quick Way to Trigger Code Action
nnoremap(",,", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
-- Press Twice to Enter Vim Buffer of the Hover Definition
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>", true)
-- Trigger Format



# Crates
nnoremap([[<leader>ct]], [[:lua require('crates').toggle()<cr>]])
nnoremap([[<leader>cr]], [[:lua require('crates').reload()<cr>]])
nnoremap([[<leader>cv]], [[:lua require('crates').show_versions_popup()<cr>]])
nnoremap([[<leader>cf]], [[:lua require('crates').show_features_popup()<cr>]])
nnoremap([[<leader>cu]], [[:lua require('crates').update_crate()<cr>]])
vnoremap([[<leader>cu]], [[:lua require('crates').update_crates()<cr>]])
nnoremap([[<leader>ca]], [[:lua require('crates').update_all_crates()<cr>]])
nnoremap([[<leader>cU]], [[:lua require('crates').upgrade_crate()<cr>]])
vnoremap([[<leader>cU]], [[:lua require('crates').upgrade_crates()<cr>]])
nnoremap([[<leader>cA]], [[:lua require('crates').upgrade_all_crates()<cr>]])

# telescope   <space>eo이것만 쓰는듯 ㅋ
    nnoremap([[<leader>f]], [[<cmd>Telescope current_buffer_fuzzy_find<CR>]])
    nnoremap([[<leader>g]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
    nnoremap("<leader>p", [[:lua require("utils/telescope-config").project_files()<CR>]], true)
    nnoremap("<leader>a", ":Telescope lsp_code_actions<CR>", true)
    nnoremap("<leader>m", ":Telescope marks<CR>", true)
    nnoremap("<leader>i", ":Telescope lsp_implementations<CR>", true)
    nnoremap([[<leader>eo]], [[<cmd>lua require('telescope.builtin').oldfiles()<cr>]])
    nnoremap([[<leader>oo]], [[:Telescope lsp_dynamic_workspace_symbols<CR>]], true)
    nnoremap([[<leader>u]], [[:Telescope lsp_references<CR>]], true)
    nnoremap([[<leader>s]], [[:Telescope treesitter<CR>]], true)


# cmp관련
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-u>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
    ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
    ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "buffer" },
    { name = 'path' },
    { name = 'cmdline' }
  },

```


# Spell

- spell check에 추가하기
  - 경로명 (.config/nvim/spell/en.utf-8.add)
```
:spell {word}
```

- https://neovim.io/doc/user/spell.html

# packer

https://github.com/wbthomason/packer.nvim

# 해결 못함
- (해결)truble.nvim오류 메세지 해결 못함
  - https://github.com/folke/trouble.nvim
- font 크기 해결 못함(neovide에서 안됨 버그인가??)neovim에서는 완벽히 잘 돌아감
  - https://neovide.dev/configuration.html

# Source 외국분 git에서 대부분 가져옴

https://github.com/codeitlikemiley/neovide-rust-neovim
