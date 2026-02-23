# Link

- [NeoVim완전 삭제 하기(잘못 설치했을때 완전히 neovim지우기)](#neovim완전-삭제-하기잘못-설치했을때-완전히-neovim지우기)
- [요즘-쓰는-lspinlayhint-color-setting & clangd inlayhint 활성화하기on](#요즘-쓰는-lspinlayhint-color-setting)
  - [clangd_extension-추가-기능cland_inlayhint-활성화link](#clangd_extension-추가-기능clangd_inlayhint-활성화)
  - [Inlay-hints세팅(다른언어들까지 모두Java,Kotlin)](#inlay-hints세팅다른언어들까지-모두javakotlin)
- [라인-fold-unfold-접기--닫기--전체-열기-전체-닫기link](#라인-fold-unfold-접기--닫기--전체-열기-전체-닫기)
- [rustsnippet기본-위치](#rustsnippet기본-위치)
- [rust-snippets-정리중](#rust-snippets-정리중)
- [플러그인매니저Lazy로 교체(packer삭제함)lazy install설치 _업데이트는lazy sync](#lazy로-교체packer삭제함)
- [hack-nerd-mono-font-설치](#hack-nerd-mono-font-설치)
- [Tabby AI설치하기_Self-hosted AI coding assistant](#tabby-ai-설치)
  - [copilot (disable)하는법](#copilot-disable하는법)
  - [Copilot채팅창나오는 플러그인Copilot_Chat](https://github.com/CopilotC-Nvim/CopilotChat.nvim)
- [네오빔-플러그인-정리neovim-plugins](#네오빔-플러그인-정리neovim-plugins)
  - [GN⁺: Llama.vim – LLM을 이용한 VIM용 코드/텍스트 자동완성 플러그인](#gn-llamavim--llm을-이용한-vim용-코드텍스트-자동완성-플러그인-)
  - [네오빔공식문서https://neovim.io/doc/user/lsp.html](https://neovim.io/doc/user/lsp.html)
  - [(외부링크)Neovim v10 setup with InlayHints](https://medium.com/@vishakhpro2002/neovim-v10-setup-with-inlayhints-838a503b17dc)
    - Rust로 만든 네오빔_플러그인 정리
      - [NeoVim 러스트(Rust)로 만든거 모음(NeoVim PlugIns)](#-supercharge-your-rust-experience-in-neovim-a-heavily-modified-fork-of-rust-toolsnvim)
- [내가 세팅한 키세팅keymap](#keymap)
  - [lsp-keymapLSP 키세팅](#lsp-keymap)
  - [telescope-keymap키세팅](#telescope-keymap)
  - [symbol-outline-keymap키세팅](#symbol-outline-keymap)
  - [HopChar KeyMap키세팅](#hopChar-keyMap)
  - [Tabby Keybinding Accept키세팅](#tabby-keybinding-accept)
- [나만의 테마로 변경하기_/lua/theme.lua](#theme테마-변경하기)
- [틀린 글짜 자동으로 찾기 영문 오타 체크Eng.(spell-check)](#spell-check)
- LSP Settings(언어별 자동완성나오게 하기)
  - [Rust언어&WASM, C/C++언어, Zig언어, Assembly언어_ LSP세팅 하기](#lsp-setting)
- [내 LunarVim_Setting루나빔 Setting](#rust_dev_neovide_lunarvimsettingmy-setting_gy_version)
- [해결해야할것_정리_해결한거랑-해결-못한거](#해결해야할것정리_해결한거랑-해결-못한거)
  - [undo--swap-file-설정하기](#undo--swap-file-설정하기)
- Deprecated 버젼업되면 해결해야함
  - [deprecated-해결해야할것-ㅠㅠnvim0.11버젼에서 해결해야함](#deprecated-해결해야할것-ㅠㅠ)
- [source-외국분-git에서-대부분-가져옴](#source-외국분-git에서-대부분-가져옴)
- [다른 사람이 만든 멋진 neovim세팅](#다른-외국인의-멋진-neovim세팅)

<hr>

- [(NvChad)WindowsOS neovim 설치는-이게-좋다](#windows-neovim-설치는-이게-좋다)
  - [WindowsOS용 내 NvChad_NeoVim Settings](https://github.com/YoungHaKim7/nvim_gy_NvChad_version)

<hr>

- [LunarVim세팅최종 lvim](#rust_dev_neovide_lunarvimsettingmy-setting_gy_version)

<hr>

- [Neovide 이미지를 실행시키기 위한 FUSE](#neovide-이미지를-실행시키기-위한-fuse)
  - [Neovide Setting(러스트로 만든거 겁나게 빠르다.)](#neovide-setting러스트로-만든거-겁나게-빠르다)
- https://neovide.dev/configuration.html
  - https://neovide.dev/

<hr>

- [ArchLinux에서 잘 안되는거 모음_복사하기 같은거](#archlinux에서-잘-안되는거-모음)

<hr />

<p align="center">
  <img alt="rust1" width=60px src="https://user-images.githubusercontent.com/67513038/213436632-820a1675-98d9-4626-979d-be63c60cdcb7.png" />
  <img alt="ferris" width=30px src="https://user-images.githubusercontent.com/67513038/213403213-1b1b3efc-ce53-4825-9dfc-e9bf2956a7f4.svg" />
  <br><img alt="nvim" width=55px src="https://github.com/YoungHaKim7/Cpp_Training/assets/67513038/ce74ee64-b16b-47aa-8afd-84c36d69a6b8" />
  <img alt="vim" width=35px src="https://user-images.githubusercontent.com/67513038/154793161-089985a0-db1d-457b-8dfd-26386af89158.png" />
</p>

<hr>

<hr>

# rust_dev_neovide_LunarVimSetting(My Setting)_GY_Version[|🔝|](#link)
- 루나빔 세팅 최종(lvim)
- https://github.com/YoungHaKim7/lvim_Rust_AI_Setting
  - LunarVim 세팅 강의(완전 처음부터)002개고생하면서 배우는 Rust_Basic(LunarVim, Helix, VSCode Zellij)
    - https://youtube.com/live/_dgi6vOnCO0?feature=share


<hr>

# Neovide Setting(러스트로 만든거 겁나게 빠르다.)[|🔝|](#link)

```lua
-- Hack Nerd Font 세팅에 글씨 크기 25
:set guifont=Hack\ Nerd\ Font:h25

-- 커서 애니매이션 없애는거 0 간단하네 ㅋ. 꼴도 보기도 싫다.
let g:neovide_cursor_animation_length = 0

-- scroll에 왜 애니매이션 넣는거야 느리게 ...
let g:neovide_scroll_animation_length = 0

-- 타이핑 치면 마우스 알아서 숨겨줌 굿..
vim.g.neovide_hide_mouse_when_typing = true

-- 요즘 쓰는 색 241103(InlayHint색깔 세팅)
:hi LspInlayHint guifg=#35638f guibg=#420517


-- Remember Previous Window Size
-- VimScript:
let g:neovide_remember_window_size = v:true
```

- nvim에서 lua세팅 or ./config/neovide/config.toml로 가능함
  - https://neovide.dev/config-file.html

```lua
-- neovide GUI config
vim.g.neovide_opacity = 0.98
vim.g.neovide_remember_window_size = true
-- vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_cursor_vfx_mode = ""
vim.opt.guifont = "Hack Nerd Font Mono:22"
-- vim.g.neovide_cursor_animation_length = 0.9
-- vim.g.neovide_cursor_tail_size = 0.1
-- allow us to use the cmd key in neovide
vim.g.neovide_input_use_logo= true
vim.g.popui_border_style = "double"
```

- `nv . --size 2930x1300`
  - 실행할때 창크기 지정됨 출처 : https://github.com/neovide/neovide/issues/1636
  - 출처2 https://github.com/neovide/neovide/pull/1706

- 누르기 귀찮아서 애니매이션 false세팅 settings.lua에 넣어줌
  - https://github.com/YoungHaKim7/rust_dev_neovide_nvimsetting/blob/main/nvim_nightly/lua/settings.lua#L1-L4

```lua
-- neovide setting
vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_remember_window_size = true
vim.o.guifont = "Hack Nerd Font:h30"
```

- `["/home/gy/.config/neovide"]`
```
ERROR [neovide::settings::config] Could not watch config file, chances are it just doesn't exist: No such file or directory (os error 2) about ["/home/gy/.config/neovide"]
```

# NeoVim완전 삭제 하기(잘못 설치했을때 완전히 neovim지우기)[|🔝|](#link)

- https://docs.rockylinux.org/ko/books/nvchad/template_chadrc/

```
// 처음설치로 만들기 & 세팅하다가 작살나면 캐쉬삭제 해주기

// 백업
mkdir ~/backup_nvim
cp -r ~/.config/nvim ~/backup_nvim
cp -r ~/.local/share/nvim ~/backup_nvim
cp -r ~/.cache/nvim ~/backup_nvim

// 캐쉬삭제
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

```

# Dash는 맥용은 유료앱(1년 정기 구독으로 유료임 ㅠㅠ)[|🔝|](#link)
- https://kapeli.com/dash

# 무료는 DevDocs 웹용이 있음[|🔝|](#link)
- https://devdocs.io/
  - https://news.hada.io/topic?id=2228

- Zeal is an offline documentation browser for software developers.
  - https://zealdocs.org/
    - https://news.hada.io/topic?id=9350

<hr>

# Windows NeoVim 설치는 이게 좋다.[|🔝|](#link)
- https://nvchad.com/

<hr>

# RustSnippet기본 위치[|🔝|](#link)

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

# Rust Snippets 정리중[|🔝|](#link)

- ```Rust Snippets.json```여기에 정리 중
  - https://github.com/YoungHaKim7/snippets_Lunar_NeoVim
- https://github.com/YoungHaKim7/UltiSnips
  - https://github.com/YoungHaKim7/rust_vim_setting/tree/main/01_Vim_NeoVim_etc_Rust_settings/snippets_Lunar_NeoVim
- https://github.com/YoungHaKim7/rust-snippets_gyoung

- Rust Code Snippets관련 자료(외국사람이 Rust Snippets 10년전 자료라 수정해서 써야함)
  - Rust고수의 snippets정리
    - https://github.com/hhatto/rust-snippets
    - 포크함 Fork https://github.com/YoungHaKim7/rust-snippets
  - https://github.com/CharaD7/neovide-config

# 요즘 쓰는 LspInlayHint Color Setting[|🔝|](#link)

- inlayhint 색깔 hex color (LunarVim Inlayhint Color Settings)

```
// 요즘 쓰는 색 240106
:hi LspInlayHint guifg=#35638f guibg=#420517
:hi Comment guifg=#35638f guibg=#420517

// 배경은 어두운 빨간색 /  글씨는 약간 밝은 색
:hi Comment guifg=#8aaecf guibg=#4e1a1a
```


# Clangd_extension 추가 기능&Clangd_InlayHint 활성화[|🔝|](#link)


- clangd inlayhintsetting로드 하면 글씨 전에 해줘야함. 자동으로 안되네 ㅠㅠ
```
:lua require("clangd_extensions.inlay_hints").set_inlay_hints()
```
- neovim 0.10버젼 이상이여야 하나?
- https://git.sr.ht/~p00f/clangd_extensions.nvim
- https://github.com/p00f/clangd_extensions.nvim

- ```:ClangdAST``` to view the ast with the current line as the range
```
:ClangdAST
```
https://github.com/p00f/clangd_extensions.nvim

- ```:ClangdSymbolInfo``` with the cursor at the desired symbol.
```
:ClangdSymbolInfo
```

- ```:ClangdTypeHierarchy``` with the cursor over the desired type or a symbol of that type. ```gd``` with the cursor over a type in a window to go to its definition.
```
:ClangdTypeHierarchy
```

- ```:ClangdMemoryUsage```. Preamble can be large so it is collapsed by default, to expand it use ```:ClangdMemoryUsage expand_preamble```
```
:ClangdMemoryUsage

:ClangdMemoryUsage expand_preamble
```

# Inlay-hints세팅(다른언어들까지 모두Java,Kotlin)[|🔝|](#link)
- NeoVim공식 inlayhint세팅
  - https://github.com/neovim/neovim/pull/23426
  - 여기를 집중적으로 분석해야함
    - https://github.com/lvimuser/lsp-inlayhints.nvim
- https://github.com/MysticalDevil/inlay-hints.nvim

- Reddit글
  - https://www.reddit.com/r/neovim/comments/14yo0ih/i_need_help_with_the_configuration_of_inlay_hints/
  - 힌트2
    - https://stackoverflow.com/questions/78477233/not-able-to-configure-inlay-hints-for-neovim-v10
  - 힌트3
    - [New Native Neovim LSP Inlay Hints (Nightly Build) | Elijah Manor](https://youtu.be/DYaTzkw3zqQ?si=Xoc-FhBsHXLtE68k)

  
<hr>

# 라인 fold unfold 접기 / 닫기 / 전체 열기/ 전체 닫기[|🔝|](#link)

- ```zR``` 접힌거 다 열기Open
- ```zM``` 열린거 다 (접기)닫기Close
- ```zo``` 지금 줄만 (접기)열기Open
- ```zc``` 열린거_(닫기)Close


- zf 명령어는 무엇일까? 기본적으로 z 명령어는 세가지가 있다. 만들기, 열기, 닫기

- 일단 fold를 한 번 만들어 놓으면 zo, zc로 여닫을 수 있다.
```
zf    "F-old 만들기 (만들면서 자동으로 닫는다)
zo    "O-pen fold (열기)
zc    "C-lose fold (닫기)
```

https://seulcode.tistory.com/488

# Hack Nerd Mono Font 설치[|🔝|](#link)

- https://github.com/ryanoasis/nerd-fonts

# Tabby AI 설치[|🔝|](#link)

- https://tabby.tabbyml.com/
  - https://github.com/TabbyML/tabby

- https://tabby.tabbyml.com/docs/extensions/installation/vim#-packernvim
- AI Models
  - https://tabby.tabbyml.com/docs/models/

- Install(Nvidia Docker설치시 사전 설치 필요) https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

- [ ] lua packer 세팅 (test 예정)

```lua
    --- Tabby AI plugin
    use {
        "TabbyML/vim-tabby",
        -- lazy = false,
        requires = {
        "neovim/nvim-lspconfig",
        },
        config = function()
            vim.g.tabby_agent_start_command = {"npx", "tabby-agent", "--stdio"}
            vim.g.tabby_inline_completion_trigger = "auto"
        end,
    },
```

- macOS
  ```bash
  tabby serve --device metal --model TabbyML/StarCoder-3B

  /opt/homebrew/opt/tabby/bin/tabby serve --device metal --model StarCoder-3B
  ```
  - service on/off
  ```bash
  brew services start tabbyml/tabby/tabby

  brew services stop tabbyml/tabby/tabby
  ```

- windows
  ```bash
  .\tabby_x86_64-windows-msvc-cuda117.exe serve --model StarCoder-3B --device cuda
  ```
- https://tabby.tabbyml.com/docs/installation/windows/

- LinuxOS(Ubuntu24.04)
  - 1. apt install

```
sudo apt-get update
sudo apt-get install libssl-dev

# For Ubuntu / Debian
apt-get install protobuf-compiler libopenblas-dev

# cuda 업데이트 3d(Nvidia기준)
sudo apt install nvidia-cuda-toolkit

```
  - 2. git clone https://github.com/TabbyML/tabby/tree/v0.11.1

```
git clone --recurse-submodules https://github.com/TabbyML/tabby
cd tabby
```


- LinuxOS(Ubuntu24.04)
- https://stackoverflow.com/questions/75118992/docker-error-response-from-daemon-could-not-select-device-driver-with-capab

- 1. Configure the repository:
```
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey |sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
&& curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list \
&& sudo apt-get update
```
- 2. Install the NVIDIA Container Toolkit packages:
```
sudo apt-get install -y nvidia-container-toolkit
```
- 3.Configure the container runtime by using the nvidia-ctk command:
```
sudo nvidia-ctk runtime configure --runtime=docker
```

- 4. Restart the Docker daemon:
```
sudo systemctl restart docker
```

- tabby (Docker Install)
```bash
sudo docker run -it --gpus all -p 8080:8080 -v $HOME/.tabby:/data \
        tabbyml/tabby \
        serve --model TabbyML/StarCoder-3B --device cuda

```

- token setting
```bash
$ ~/.tabby-client
❯ eza --icons -TL2
 .
└──  agent
   ├──  config.toml
   └──  data.json

```
- config.toml
```toml
## Tabby agent configuration file

## Online documentation: https://tabby.tabbyml.com/docs/extensions/configurations
## You can uncomment and edit the values below to change the default settings.
## Configurations in this file have lower priority than the IDE settings.

## Server
## You can set the server endpoint here and an optional authentication token if required.
[server]
endpoint = "http://localhost:8080" # http or https URL
token = "Input My token" # if token is set, request header Authorization = "Bearer $token" will be added automatically

## You can add custom request headers.
# [server.requestHeaders]
# Header1 = "Value1" # list your custom headers here
# Header2 = "Value2" # values can be strings, numbers or booleans

## Logs
## You can set the log level here. The log file is located at ~/.tabby-client/agent/logs/.
# [logs]
# level = "silent" # "silent" or "error" or "debug"

## Anonymous usage tracking
## Tabby collects anonymous usage data and sends it to the Tabby team to help improve our products.
## Your code, generated completions, or any sensitive information is never tracked or sent.
## For more details on data collection, see https://tabby.tabbyml.com/docs/extensions/configurations#usage-collection
## Your contribution is greatly appreciated. However, if you prefer not to participate, you can disable anonymous usage tracking here.
# [anonymousUsageTracking]
# disable = false # set to true to disable

```

- `http://localhost:8080/` 크롬이나 파이어폭스 브라우져에서 주소창에 치면 DashBoard나온다.

# copilot (disable)하는법[|🔝|](#link)

- NeoVim Default Key는 `C-i` 어떻게 변경하는지 못찾음 그냥 `C-i` 누르는 걸로..
  - https://github.com/orgs/community/discussions/11611
 
- **(Install)**Neovim, Linux/macOS:

```bash
git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim
```

```lua
vim.api.nvim_set_keymap('i', '<C-b>', 'copilot#Accept()', true)
```


- https://github.com/github/copilot.vim


```
:Copilot disable        Globally disable GitHub Copilot inline suggestions.

                                                *:Copilot_enable*
:Copilot enable         Re-enable GitHub Copilot after :Copilot disable.

                                                *:Copilot_setup*
:Copilot setup          Authenticate and enable GitHub Copilot.

                                                *:Copilot_signout*
:Copilot signout        Sign out of GitHub Copilot.

                                                *:Copilot_status*
:Copilot status         Check if GitHub Copilot is operational for the current
                        buffer and report on any issues.

                                                *:Copilot_panel*
:Copilot panel          Open a window with up to 10 completions for the
                        current buffer.  Use <CR> to accept a completion.
                        Maps are also provided for [[ and ]] to jump from
                        completion to completion.  This is the default command
                        if :Copilot is called without an argument.

                                                *:Copilot_version*
:Copilot version        Show version information.

                                                *:Copilot_feedback*
:Copilot feedback       Open the website for providing GitHub Copilot
                        feedback.  Be sure to include |:Copilot_version|
                        output when reporting a bug.
```

<hr />

# 네오빔 플러그인 정리(NeoVim Plugins[|🔝|](#link)
- 무지게 색 괄호(Rainbow_Parentheses)
  - https://github.com/HiPhish/rainbow-delimiters.nvim

  ```bash
  ~/.local/share/nvim/site/pack/packer/start

  # 강제로 설치
  git clone https://github.com/HiPhish/rainbow-delimiters.nvim
  ```
  - 뻗으면 테스트 예정
  ```
  require('rainbow-delimiters.setup').setup{}
  ```

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

- UnicodeTable 추가만 하면 그냥 끝(:UnicodeTable)
  - https://github.com/chrisbra/unicode.vim
  ```
    -- :UnicodeTable    - Print Unicode Table in new window
    "chrisbra/unicode.vim",
  ```
- symbols-outline 업데이트 안하는것 같아서 교체함(260208)
  - https://github.com/hedyhli/outline.nvim

- [Symbol-outline](https://github.com/simrat39/symbols-outline.nvim)
  - 혹시 오류 나면 강제로 설치
  ```bash
  /.local/share/nvim/site/pack/packer/start

  # 강제로 설치
  git clone https://github.com/nvim-neotest/nvim-nio
  ```

- C언어 자동정렬
  - https://clang.llvm.org/docs/ClangFormat.html
    - https://vi.stackexchange.com/questions/43514/automatic-formatting-in-c-c-etc-while-typing-in-neovim

```bash
sudo apt update

apt search clang-format
```
- vim에서 사용법(설치후) command창에 입력하면 됨
- `:%!clang-format`
```
:%!clang-format
```

# Theme테마 변경하기[|🔝|](#link)

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

# Keymap[|🔝|](#link)

- https://github.com/nvim-telescope/telescope.nvim

```lua
vim.g.mapleader = " "

-- Disable Ctrl +Z
nnoremap("<C-z>", [[<nop>]])
-- Quick Replace of Word
-- nnoremap("S", [[:%s//g<Left><Left>]])
nnoremap("<leader>rnn", [[:%s//gc<Left><Left><Left>]])

nnoremap(",<leader>", [[:set hlsearch!<CR>]])

-- file search
nnoremap("<leader>F", ":Telescope find_files<CR>")

-- tagbar toggle
-- nnoremap("<leader>ov", ":TagbarToggle<CR>")

-- SymbolOutline
nnoremap("<leader>o", ":Outline<CR>")
nnoremap("<leader>S", ":Telescope lsp_document_symbols<CR>")
-- file search
nnoremap("<leader>F", ":Telescope find_files<CR>")

nnoremap([[<leader>fb]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
nnoremap([[<leader>fh]], [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])
nnoremap([[<leader>fg]], [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])

-- TroubleToggle
nnoremap("<leader>t", ":Trouble<CR>")
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

# HopChar KeyMap[|🔝|](#link)
- `gw` 는 helix키와 똑같음 ㅋ
```
nnoremap("<backspace>f", [[:HopChar1<CR>]])
nnoremap("gw", [[:HopChar2<CR>]])
nnoremap("<leader>W", [[:HopWord<CR>]])
```


# Telescope KeyMap[|🔝|](#link)

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

# LSP keymap[|🔝|](#link)

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

# Symbol-outline Keymap[|🔝|](#link)

```lua
# 모두 접기 W   / 모두 펴기 E
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

# Tabby Keybinding Accept[|🔝|](#link)

```lua
vim.g.tabby_keybinding_accept = '<C-b>'
```


# Spell Check[|🔝|](#link)

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

# Lazy로 교체(packer삭제함)[|🔝|](#link)

- 최종 lazy써야함(260223부터 이걸로 적용함)
  - Lazy 로 교체함 Packer종료
    - 💤 A modern plugin manager for Neovim
      - https://github.com/folke/lazy.nvim
  

- packer삭제(update가 중지되고 관리가 안되서 삭제함260222)
  - https://github.com/wbthomason/packer.nvim

# LSP Setting[|🔝|](#link)
- https://github.com/neovim/nvim-lspconfig
- [Rust](https://www.rust-lang.org/)
  - rust-analyzer https://rust-analyzer.github.io/
    ```bash
    # rustup
    # rust-analyzer is available in rustup:

    $ rustup component add rust-analyzer
     ```
- WASM support(Rust)
  - install

  ```bash

  rustup target add wasm32-wasi
  ```

  ```
  cargo build --target wasm32-wasi
  wasmer run target/wasm32-wasi/debug/cve-rs.wasm
  ```
  https://wasmer.io/

  https://github.com/Speykious/cve-rs


  ```bash
  curl https://get.wasmer.io -sSfL | sh
  ```

  - Run in CLI

  ```bash
  wasmer run cowsay "Hello world"
  ```

  ```
  pdating bash profile /Users/g/.config/fish/config.fish
  we've added the following to your /Users/g/.config/fish/config.fish
  If you have a different profile please add the following:

  - Wasmer
  export WASMER_DIR="/Users/g/.wasmer"
  [ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
  check: wasmer 4.2.7 installed successfully ✓
  wasmer will be available the next time you open the terminal.
  If you want to have the commands available now please execute:

  source /Users/g/.wasmer/wasmer.sh
  ```
    - FishShell세팅하기
      - https://github.com/YoungHaKim7/rust_vim_setting/tree/main/10_FishShell

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

- python LSP 설치
  - https://pypi.org/project/python-lsp-server/
  ```bash
  sudo apt-get install python3-pylsp
  ```

  - macOS
  ```bash
  brew install python-lsp-server
  ```

  - Python Lint
    - https://github.com/astral-sh/ruff
    - https://docs.astral.sh/ruff/installation/

    - macOS
  ```
  brew install ruff
  ```
  - Rust로 만든 LSP Server(pylyzer)
    - https://github.com/mtshiba/pylyzer

- Helix&NeoVim Java LSP세팅

# Helix( Java LSP Install ) jdtls설치하기 그냥 github 땡기고 install하면 설치 된다. 최고..[|🔝|](#link)

https://github.com/eruizc-dev/jdtls-launcher

```
git clone https://github.com/eruizc-dev/jdtls-launcher.git
Cloning into 'jdtls-launcher'...
remote: Enumerating objects: 241, done.
remote: Counting objects: 100% (85/85), done.
remote: Compressing objects: 100% (52/52), done.
remote: Total 241 (delta 43), reused 50 (delta 28), pack-reused 156
Receiving objects: 100% (241/241), 48.74 KiB | 9.75 MiB/s, done.
Resolving deltas: 100% (125/125), done.


$ cd jdtls-launcher


$ ls
CONTRIBUTING.md  install.sh  jdtls-launcher.sh  LICENSE  README.md


$ ./install.sh
INFO: Downloading JDTLS-LAUNCHER
-#O=#   #     #
INFO: Extracting JDTLS-LAUNCHER
INFO: Creating symlink at /home/gy/.local/bin/jdtls
Installing jdtls...
jdt-language-server-1.28.0-202309221544 is going to be installed
########################################################################################################################### 100.0%########################################################################################################################### 100.0%
Installing lombok...
########################################################################################################################### 100.0%
Lombok installation succesfull
JDTLS installation succesfull
INFO: Installation successful
INFO: Ensure /home/gy/.local/bin is in path
```

- (자바Java LSP세팅)Configure Neovim for Java Development | Andrew Courter
  - https://youtu.be/C7juSZsM2Fg?si=qxInD8VLDjxSSk7K


- (지그로 만들거 좋다.)Language server for GLSL (autocomplete, goto-definition, formatter, and more)
  - https://github.com/nolanderc/glsl_analyzer

- Installation
  - We provide precompiled binaries for Linux, MacOS and Windows on the Releases page. Make sure to copy it somewhere under your PATH environment variable (e.g. ~/.local/bin on Linux).
  - Building from Source

```
zig build install -Doptimize=ReleaseSafe --prefix ~/.local/
```

Tested using zig 0.13.0.

- Usage

- By default glsl_analyzer communicates over stdin/stdout:

```
glsl_analyzer
```

- However, you can configure it to use a specific port (TCP) using the following command:

```
glsl_analyzer --port <PORT>
```

- Neovim

- nvim-lspconfig comes with support for glsl_analyzer. Simply add the following to your lua config:

```lua
require'lspconfig'.glsl_analyzer.setup{}
```

- Visual Studio Code
  - Install the glsl-analyzer extension from the marketplace. It will automatically download the latest precompiled binary for your platform.

<hr />

# 해결해야할것정리_해결한거랑 해결 못한거[|🔝|](#link)
- [x] (해결)truble.nvim오류 메세지 해결 못함
  - https://github.com/folke/trouble.nvim
- [ ] font 크기 해결 못함(neovide에서 안됨 버그인가??)neovim에서는 완벽히 잘 돌아감
  - https://neovide.dev/configuration.html
- [x] LSP goto 해결함 (초간단ㅋ)
  - https://github.com/neovim/neovim/issues/16062
```
:lua vim.diagnostic.goto_next() or :lua vim.diagnostic.goto_prev()
```

- [x] rainbow 나왔다가 안 나왔다가 ㅠㅠ  해결 된듯.

```
:lua require('rainbow-delimiters.setup').setup()
```
```lua
require("plugins/rainbow-delimiters")
require('rainbow-delimiters.setup').setup()
```

```lua
require('rainbow-delimiters.setup').setup ()
-- This module contains a number of default definitions
local rainbow_delimiters = require 'rainbow-delimiters'

---@type rainbow_delimiters.config
vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    priority = {
        [''] = 110,
        lua = 210,
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}
```

# Undo & Swap file 설정하기[|🔝|](#link)
- https://toddknutson.bio/posts/how-to-enable-neovim-undo-backup-and-swap-files-when-switching-linux-groups/

- 이걸로 대충 해줌
```lua
-- Enable swap, backup, and persistant undo
vim.opt.directory = SWAPDIR
vim.opt.backupdir = BACKUPDIR
vim.opt.undodir = UNDODIR
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
```

<hr>

- Lua config for Neovim
  - Capture the current USER and store in variable.
  - Capture the current GROUP by running a system command id -ng

```lua
USER = os.getenv("USER")
local curr_group = vim.fn.system("id -ng 2> /dev/null | tr -d '\n'")
```

- Use the variables above to assign some dynamically generated directories, based on your current group

```lua
SWAPDIR = "/home/" .. curr_group .. "/" .. USER .. "/nvim/swap//"
BACKUPDIR = "/home/" .. curr_group .. "/" .. USER .. "/nvim/backup//"
UNDODIR = "/home/" .. curr_group .. "/" .. USER .. "/nvim/undo//"
```

- If the dirs do not exist, create them
  - Update their permissions to 700

```lua
if vim.fn.isdirectory(SWAPDIR) == 0 then
	vim.fn.mkdir(SWAPDIR, "p", "0o700")
end

if vim.fn.isdirectory(BACKUPDIR) == 0 then
	vim.fn.mkdir(BACKUPDIR, "p", "0o700")
end

if vim.fn.isdirectory(UNDODIR) == 0 then
	vim.fn.mkdir(UNDODIR, "p", "0o700")
end
```

# Deprecated 해결해야할것 ㅠㅠ[|🔝|](#link)
- Nvim 0.11부터 해결해야할것
- 단서1
  - vim.lsp.util.parse_snippet is deprecated what should I do?
    - https://www.reddit.com/r/neovim/comments/17je2j1/vimlsputilparse_snippet_is_deprecated_what_should/
- 단서2
  - https://github.com/hrsh7th/nvim-cmp/pull/1734
```lua

vim.lsp.util.parse_snippet() is deprecated. :help deprecated
Feature will be removed in Nvim 0.11
stack traceback:
        ...ies/nvim-linux64/share/nvim/runtime/lua/vim/lsp/util.lua:624: in function 'parse_snippet'
        /home/gy/.config/nvim/lua/plugins/cmp.lua:25: in function 'before'
        ...site/pack/packer/start/lspkind-nvim/lua/lspkind/init.lua:190: in function 'format'
        ...e/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/entry.lua:295: in function 'callback'
        .../site/pack/packer/start/nvim-cmp/lua/cmp/utils/cache.lua:38: in function 'get_vim_item'
        ...e/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/entry.lua:411: in function 'callback'
        .../site/pack/packer/start/nvim-cmp/lua/cmp/utils/cache.lua:38: in function 'match'
        .../nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:116: in function 'get_entries'
        ...re/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/view.lua:75: in function 'open'
        ...re/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:336: in function <...re/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:309>
```
- 오류가 더 늘어남
```
gitsigns: Ignoring invalid configuration field 'yadm'
'signs.add.hl' is now deprecated, please define highlight 'GitSignsAdd' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsAdd', { link = 'GitSignsAdd' })
'signs.add.linehl' is now deprecated, please define highlight 'GitSignsAddLn' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsAddLn', { link = 'GitSignsAddLn' })
'signs.add.numhl' is now deprecated, please define highlight 'GitSignsAddNr' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsAddNr', { link = 'GitSignsAddNr' })
'signs.change.hl' is now deprecated, please define highlight 'GitSignsChange' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'GitSignsChange' })
'signs.change.linehl' is now deprecated, please define highlight 'GitSignsChangeLn' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsChangeLn', { link = 'GitSignsChangeLn' })
'signs.change.numhl' is now deprecated, please define highlight 'GitSignsChangeNr' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsChangeNr', { link = 'GitSignsChangeNr' })
'signs.changedelete.hl' is now deprecated, please define highlight 'GitSignsChangedelete' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsChangedelete', { link = 'GitSignsChange' })
'signs.changedelete.linehl' is now deprecated, please define highlight 'GitSignsChangedeleteLn' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsChangedeleteLn', { link = 'GitSignsChangeLn' })
'signs.changedelete.numhl' is now deprecated, please define highlight 'GitSignsChangedeleteNr' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsChangedeleteNr', { link = 'GitSignsChangeNr' })
'signs.delete.hl' is now deprecated, please define highlight 'GitSignsDelete' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsDelete', { link = 'GitSignsDelete' })
'signs.delete.linehl' is now deprecated, please define highlight 'GitSignsDeleteLn' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsDeleteLn', { link = 'GitSignsDeleteLn' })
'signs.delete.numhl' is now deprecated, please define highlight 'GitSignsDeleteNr' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsDeleteNr', { link = 'GitSignsDeleteNr' })
'signs.topdelete.hl' is now deprecated, please define highlight 'GitSignsTopdelete' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsTopdelete', { link = 'GitSignsDelete' })
'signs.topdelete.linehl' is now deprecated, please define highlight 'GitSignsTopdeleteLn' e.g:
  vim.api.nvim_set_hl(0, 'GitSignsTopdeleteLn', { link = 'GitSignsDeleteLn' })
-- More --
```

# Source 외국분 git에서 대부분 가져옴[|🔝|](#link)

- https://github.com/codeitlikemiley/neovide-rust-neovim
  - 여기를 참조 많이 해야함(다 흡수 못함 ㅠㅠ)

# 다른 외국인의 멋진 NeoVim세팅[|🔝|](#link)
- https://github.com/dreamsofcode-io/DreamNvim
  - 출처: https://youtu.be/ig_HLrssAYE?si=rwgmDQyHhVeGz71U
- https://github.com/tobinjt/dotfiles

- 한국 사람
  - https://github.com/moong00n/neovim-starter

<hr>

# Neovide 이미지를 실행시키기 위한 FUSE[|🔝|](#link)
- https://github.com/AppImage/AppImageKit/wiki/FUSE

<hr>

# **[GN⁺: Llama.vim – LLM을 이용한 VIM용 코드/텍스트 자동완성 플러그인 ](<https://news.hada.io/topic?id=18885&utm_source=discord&utm_medium=bot&utm_campaign=1480>)**[|🔝|](#link)
- https://github.com/ggml-org/llama.vim
- VIM내에서 로컬 LLM 기반의 텍스트 자동완성 기능을 제공   
- `Insert` 모드에서 커서 이동 시 자동 제안  
- `Ctrl+F`로 수동 제안 전환 가능  
- `Tab`으로 제안 수락  
- `Shift+Tab`으로 첫 번째 줄 제안 수락  
- 최대 텍스트 생성 시간 설정 가능  
- 커서 주변의 컨텍스트 범위 설정 가능  
- 열린 파일...

# ArchLinux에서 잘 안되는거 모음[|🔝|](#link)

- 클립보드 복사/붙혀넣기 해결
  - https://github.com/astrand/xclip
    - https://bbs.archlinux.org/viewtopic.php?id=277961

- https://www.reddit.com/r/neovim/comments/i65pwd/no_python3_provider_found_run_checkhealth_provider/
  - https://bbs.archlinux.org/viewtopic.php?id=269645

```
sudo pacman -S python-neovim
```

<hr />

# NeoVim 러스트로 만든거 모음(NeoVim PlugIns)[|🔝|](#link)

# 🦀 Supercharge your Rust experience in Neovim! A heavily modified fork of rust-tools.nvim 
- https://github.com/mrcjkb/rustaceanvim

<hr />

# NeoVim 쓸만한거[|🔝|](#link)

- NerdTree Alternative대체재
  - https://www.reddit.com/r/neovim/s/dMDw5J9FR4

# echasnovski/mini.nvim[|🔝|](#link)
- Library of 40+ independent Lua modules improving overall Neovim (version 0.8 and higher) experience with minimal 
  - https://github.com/echasnovski/mini.nvim
