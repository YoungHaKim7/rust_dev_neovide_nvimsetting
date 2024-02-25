# Link

- [요즘-쓰는-lspinlayhint-color-setting & clangd inlayhint 활성화하기on](#요즘-쓰는-lspinlayhint-color-setting)
- [rustsnippet기본-위치](#rustsnippet기본-위치)
- [rust-snippets-정리중](#rust-snippets-정리중)
- [플러그인매니저 packer설치하기PackerInstall설치 _ 삭제는 PackerClean_업데이트는PackerSync](#packer)
- [hack-nerd-mono-font-설치](#hack-nerd-mono-font-설치)
- [Tabby AI설치하기_Self-hosted AI coding assistant](#tabby-ai-설치)
- [네오빔-플러그인-정리neovim-plugins](#네오빔-플러그인-정리neovim-plugins)
- [내가 세팅한 키세팅keymap](#keymap)
  - [lsp-keymapLSP 키세팅](#lsp-keymap)
  - [telescope-keymap키세팅](#telescope-keymap)
  - [symbol-outline-keymap키세팅](#symbol-outline-keymap)
  - [HopChar KeyMap키세팅](#hopChar-keyMap)
  - [Tabby Keybinding Accept키세팅](#tabby-keybinding-accept)
- [나만의 테마로 변경하기_/lua/theme.lua](#thema테마-변경하기)
- [틀린 글짜 자동으로 찾기 영문 오타 체크Eng.(spell-check)](#spell-check)
- [C/C++언어, Rust언어, Zig언어, Assembly언어_ LSP세팅 하기](#lsp-setting)
- [내 LunarVim_Setting루나빔 Setting](#rust_dev_neovide_lunarvimsettingmy-setting_gy_version)
- [해결해야할것_정리_해결한거랑-해결-못한거](#해결해야할것정리_해결한거랑-해결-못한거)
- [source-외국분-git에서-대부분-가져옴](#source-외국분-git에서-대부분-가져옴)


<p align="center">
  <img alt="rust1" width=60px src="https://user-images.githubusercontent.com/67513038/213436632-820a1675-98d9-4626-979d-be63c60cdcb7.png" />
  <img alt="ferris" width=30px src="https://user-images.githubusercontent.com/67513038/213403213-1b1b3efc-ce53-4825-9dfc-e9bf2956a7f4.svg" />
  <br><img alt="nvim" width=55px src="https://github.com/YoungHaKim7/Cpp_Training/assets/67513038/ce74ee64-b16b-47aa-8afd-84c36d69a6b8" />
  <img alt="vim" width=35px src="https://user-images.githubusercontent.com/67513038/154793161-089985a0-db1d-457b-8dfd-26386af89158.png" />
</p>

<hr>

<hr>

# rust_dev_neovide_LunarVimSetting(My Setting)_GY_Version[[🔝]](#link)
- https://github.com/YoungHaKim7/lvim_Rust_AI_Setting

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

- ```Rust Snippets.json```여기에 정리 중
  - https://github.com/YoungHaKim7/snippets_Lunar_NeoVim
- https://github.com/YoungHaKim7/UltiSnips
  - https://github.com/YoungHaKim7/rust_vim_setting/tree/main/01_Vim_NeoVim_etc_Rust_settings/snippets_Lunar_NeoVim
- https://github.com/YoungHaKim7/rust-snippets_gyoung

- Rust Code Snippets관련 자료(외국사람이 Rust Snippets 10년전 자료라 수정해서 써야함)
  - Rust고수의 snippets정리
    - https://github.com/hhatto/rust-snippets
    - 포크함 Fork https://github.com/YoungHaKim7/rust-snippets

# 요즘 쓰는 LspInlayHint Color Setting[[🔝]](#link)

- inlayhint 색깔 hex color (LunarVim Inlayhint Color Settings)

```
// 요즘 쓰는 색 240106
:hi LspInlayHint guifg=#35638f guibg=#420517
:hi Comment guifg=#35638f guibg=#420517

// 배경은 어두운 빨간색 /  글씨는 약간 밝은 색
:hi Comment guifg=#8aaecf guibg=#4e1a1a
```

- clangd inlayhintsetting로드 하면 글씨 전에 해줘야함. 자동으로 안되네 ㅠㅠ
```
:lua require("clangd_extensions.inlay_hints").set_inlay_hints()
```
- neovim 0.10버젼 이상이여야 하나?
- https://git.sr.ht/~p00f/clangd_extensions.nvim
- https://github.com/p00f/clangd_extensions.nvim

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

- (터미널창 공중에 띄우기 굿)A neovim lua plugin to help easily manage multiple terminal windows
  - https://github.com/akinsho/toggleterm.nvim
  ```
  :ToggleTerm direction=float
  ```

# Thema테마 변경하기[[🔝]](#link)

- ./lua/theme.lua

```lua
-- vim.cmd("colorscheme OceanicNext")
-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme dracura")
-- vim.cmd("colorscheme habamax")
vim.cmd("colorscheme tokyonight-night")
```

- dracula https://github.com/Mofiqul/dracula.nvim
- tokyonight https://github.com/folke/tokyonight.nvim
- oceanic-next https://github.com/roflolilolmao/oceanic-next.nvim

# Keymap[[🔝]](#link)

```lua
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
-- (vs, sp 이거 했을때)지금 창을 큰창으로 만들기 only
nnoremap("<leader>bo", ":on<CR>")

-- Better tabbing
vnoremap("<", "<gv")
vnoremap(">", ">gv")
-- Terminal(Toggleterm)
nnoremap("<C-t>t", ":ToggleTerm direction=float<CR>")
nnoremap("<C-t>tv", ":ToggleTerm direction=vertical<CR>")
-- MoveLine Up & Down
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Map Ctrl-W to delete the previous word in insert mode.
inoremap("<C-w>", "<C-\\><C-o>dB")
inoremap("jk", "<esc>")

-- Esc and Clear Highligh
nnoremap("<esc>", ":noh<return><esc>")

-- Yank Whole Line(:%y 전체복사  , 전체 지우기 :%d)
nnoremap("Y", "y$<CR>")

-- Buffer
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

-- windows split
nnoremap("vsp", ":vsplit<CR>")
nnoremap("sp", ":split<CR>")



-- Resize Panes with + - or with shift + -
nnoremap("__", ":resize -5<CR>")
nnoremap("++", ":resize +5<CR>")
nnoremap("--", ":vertical resize -5<CR>")
nnoremap("==", ":vertical resize +5<CR>")


-- Crates
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


-- cmp관련
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

# HopChar KeyMap[[🔝]](#link)

```
nnoremap("<backspace>f", [[:HopChar1<CR>]])
nnoremap("<leader>F", [[:HopChar2<CR>]])
nnoremap("<leader>W", [[:HopWord<CR>]])
```


# Telescope KeyMap[[🔝]](#link)

```lua
-- lvim
lvim.keys.normal_mode["<leader><leader>"] = ":Telescope buffers<CR>"


-- nvim setting

nnoremap([[<leader>f]], [[<cmd>Telescope current_buffer_fuzzy_find<CR>]])
nnoremap([[<leader><leader>]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
nnoremap("<leader>p", [[:lua require("utils/telescope-config").project_files()<CR>]], true)
nnoremap("<leader>a", ":Telescope lsp_code_actions<CR>", true)
nnoremap("<leader>m", ":Telescope marks<CR>", true)
nnoremap("<leader>i", ":Telescope lsp_implementations<CR>", true)
nnoremap([[<leader>eo]], [[<cmd>lua require('telescope.builtin').oldfiles()<cr>]])
nnoremap([[<leader>S]], [[:Telescope lsp_dynamic_workspace_symbols<CR>]], true)
nnoremap([[<leader>u]], [[:Telescope lsp_references<CR>]], true)
nnoremap([[<leader>s]], [[:Telescope treesitter<CR>]], true)

```

# LSP keymap[[🔝]](#link)

```lua


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

```

# Symbol-outline Keymap[[🔝]](#link)

```lua
keymaps = { -- These keymaps can be a string or a table for multiple keys
    close = {"<Esc>", "q"},
    goto_location = "<Cr>",
    focus_location = "o",
    hover_symbol = "<C-space>",
    toggle_preview = "K",
    rename_symbol = "r",
    code_actions = "a",
    fold = "h",
    unfold = "l",
    fold_all = "W",
    unfold_all = "E",
    fold_reset = "R",
  },
```

# Tabby Keybinding Accept[[🔝]](#link)

```lua
vim.g.tabby_keybinding_accept = '<C-b>'
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


- tree
```bash
❯ tree -L 2
.
├── config.toml
├── init.lua
├── lua
│   ├── autocmd
│   ├── autocmd.lua
│   ├── globals.lua
│   ├── keymaps
│   ├── mappings.lua
│   ├── packages.lua
│   ├── plugins
│   ├── settings.lua
│   ├── theme.lua
│   ├── utils
│   └── vim_g.lua
├── luarc.lua
├── plugin
│   └── packer_compiled.lua
├── readme.md
├── spell
│   ├── en.utf-8.add
│   └── en.utf-8.add.spl
└── stylua.toml

 7 directories, 15 files
```

# packer[[🔝]](#link)

https://github.com/wbthomason/packer.nvim

# LSP Setting[[🔝]](#link)
- https://github.com/neovim/nvim-lspconfig
- [Rust](https://www.rust-lang.org/)
  - rust-analyzer https://rust-analyzer.github.io/
    ```bash
    # rustup
    # rust-analyzer is available in rustup:
    
    $ rustup component add rust-analyzer
    ```
- [C/C++](https://llvm.org/)
  - clangd https://llvm.org/
- [zig](https://ziglang.org/)
  - zls https://github.com/zigtools/zls

- assembly(asm-lsp)
  - Vim \_ Assembly Highlight Syntax
```
:set ft=nasm  " assembly highlight syntax
```
  - NeoVim(asm-lsp)
    - TSInstall로 Syntax Highlight적용(NeoVim)
```
:TSInstall asm
```
  - NeoVim에서 assembly LSP 설치하기
    - https://www.reddit.com/r/neovim/s/XAuQM98VY6
      - https://github.com/bergercookie/asm-lsp
        - Using cargo
          - Install using the cargo package manager, either from crates.io or from github:
```
cargo install asm-lsp
# or to get the latest version from github
cargo install --git https://github.com/bergercookie/asm-lsp
```



<hr>

# 해결해야할것정리_해결한거랑 해결 못한거[[🔝]](#link)
- [x] (해결)truble.nvim오류 메세지 해결 못함
  - https://github.com/folke/trouble.nvim
- [ ] font 크기 해결 못함(neovide에서 안됨 버그인가??)neovim에서는 완벽히 잘 돌아감
  - https://neovide.dev/configuration.html
- [x] LSP goto 해결함 (초간단ㅋ)
  - https://github.com/neovim/neovim/issues/16062
```
:lua vim.diagnostic.goto_next() or :lua vim.diagnostic.goto_prev()
```


# Source 외국분 git에서 대부분 가져옴[[🔝]](#link)

- https://github.com/codeitlikemiley/neovide-rust-neovim
  - 여기를 참조 많이 해야함(다 흡수 못함 ㅠㅠ)

