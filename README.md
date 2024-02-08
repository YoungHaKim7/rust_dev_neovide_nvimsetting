# Link

- [요즘-쓰는-lspinlayhint-color-setting](#요즘-쓰는-lspinlayhint-color-setting)
- [rustsnippet기본-위치](#rustsnippet기본-위치)
- [rust-snippets-정리중](#rust-snippets-정리중)
- [플러그인매니저 packer설치하기PackerInstall설치 _ 삭제는 PackerClean_업데이트는PackerSync](#packer)
- [hack-nerd-mono-font-설치](#hack-nerd-mono-font-설치)
- [Tabby AI설치하기_Self-hosted AI coding assistant](#tabby-ai-설치)
- [네오빔-플러그인-정리neovim-plugins](#네오빔-플러그인-정리neovim-plugins)
- [내가 세팅한 키세팅keymap](#keymap)
- [틀린 글짜 자동으로 찾기 영문 오타 체크Eng.(spell-check)](#spell-check)


<hr>

# rust_dev_neovide_nvimsetting[[🔝]](#link)
- https://github.com/codeitlikemiley/neovide-rust-neovim
  - 여기를 참조 많이 해야함(다 흡수 못함 ㅠㅠ)

<hr>

# Dash는 맥용은 유료앱(1년 정기 구독으로 유료임 ㅠㅠ)[[🔝]](#link)
- https://kapeli.com/dash

# 무료는 DevDocs 웹용이 있음[[🔝]](#link)
- https://devdocs.io/
  - https://news.hada.io/topic?id=2228

- Zeal is an offline documentation browser for software developers.
  - https://zealdocs.org/
    - https://news.hada.io/topic?id=9350

<hr>

# RustSnippet기본 위치[[🔝]](#link)

- https://github.com/hrsh7th/vim-vsnip

- 내꺼 정리 https://github.com/YoungHaKim7/rust_vim_setting/tree/main/01_Vim_NeoVim_etc_Rust_settings/snippets_Lunar_NeoVim

- ```:VsnipOpen```


- global.json위치(~/.vsnip/global.json)
- rust.json위치(~/.vsnip/rust.json) 

```
~/.vsnip                                                                                          at 19:17:08
❯ tree
.
├── global.json
└── rust.json

0 directories, 2 files

```

# Rust Snippets 정리중[[🔝]](#link)

- https://github.com/YoungHaKim7/UltiSnips
- https://github.com/YoungHaKim7/snippets_Lunar_NeoVim
  - https://github.com/YoungHaKim7/rust_vim_setting/tree/main/01_Vim_NeoVim_etc_Rust_settings/snippets_Lunar_NeoVim
- https://github.com/YoungHaKim7/rust-snippets_gyoung


# 요즘 쓰는 LspInlayHint Color Setting[[🔝]](#link)

- inlayhint 색깔 hex color (LunarVim Inlayhint Color Settings)

```
// 요즘 쓰는 색 240106
:hi LspInlayHint guifg=#35638f guibg=#420517
:hi Comment guifg=#35638f guibg=#420517

// 배경은 어두운 빨간색 /  글씨는 약간 밝은 색
:hi Comment guifg=#8aaecf guibg=#4e1a1a
```

# Hack Nerd Mono Font 설치[[🔝]](#link)

- https://github.com/ryanoasis/nerd-fonts

# Tabby AI 설치[[🔝]](#link)

- https://tabby.tabbyml.com/
  - https://github.com/TabbyML/tabby

- https://tabby.tabbyml.com/docs/extensions/installation/vim#-packernvim


# 네오빔 플러그인 정리(NeoVim Plugins[[🔝]](#link)
- 무지개색 탭 좋네 ㅋ
  - https://github.com/lukas-reineke/indent-blankline.nvim
- (오류난거 리스트로 출력 굿)🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
  - https://github.com/folke/trouble.nvim
- (ctag 같은거)A tree like view for symbols in Neovim using the Language Server Protocol. Supports all your favourite languages.
  - https://github.com/simrat39/symbols-outline.nvim

# Keymap[[🔝]](#link)

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


# Spell Check[[🔝]](#link)

- spell check에 추가하기
  - 경로명 (.config/nvim/spell/en.utf-8.add)
```
:spell {word}
```

- https://neovim.io/doc/user/spell.html

- 영단어 txt파일로 제공함(txt & yml)
  - https://github.com/dwyl/english-words


# packer[[🔝]](#link)

https://github.com/wbthomason/packer.nvim

# 해결 못함[[🔝]](#link)
- (해결)truble.nvim오류 메세지 해결 못함
  - https://github.com/folke/trouble.nvim
- font 크기 해결 못함(neovide에서 안됨 버그인가??)neovim에서는 완벽히 잘 돌아감
  - https://neovide.dev/configuration.html

# Source 외국분 git에서 대부분 가져옴[[🔝]](#link)

https://github.com/codeitlikemiley/neovide-rust-neovim
