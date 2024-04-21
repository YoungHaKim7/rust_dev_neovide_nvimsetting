# neovim(plug-ins 약간 설치 하는 버전)

- init.vim
  - https://github.com/YoungHaKim7/rust_vim_setting/tree/main/01_Vim_NeoVim_etc_Rust_settings/NeoVim/NeoVim_init_vim/1NeoVim_Simple_Setting

# neovim(Plugins설치 없이 완전 간단 버젼 )

- init.vim(C:\Users\User\AppData\Local\nvim)

```vim
" Move visually selected lines up or down in various modes.
" nnoremap K :m .-2<CR>==
" nnoremap J :m .+1<CR>==

let mapleader = " "
 
nnoremap <leader>bt :tabe<CR>
nnoremap <leader>btt :terminal pwsh.exe<CR>

nnoremap L <C-w>gt
nnoremap H <C-w>gT

" Line Move Up & Down
vnoremap K :m '<-2<CR>gv==gv
vnoremap J :m '>+1<CR>gv==gv
" ~~~~~~~~~

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>
noremap <silent> <C-Up> :resize -3<CR>

" Esc and Clear Hightligh
nnoremap <Esc> :noh<return><Esc>

" rename
"
nnoremap <leader>rnn :%s//gc<Left><Left><Left>
""~ Set End
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

- https://github.com/YoungHaKim7/rust_vim_setting/tree/main/01_Vim_NeoVim_etc_Rust_settings#windows-neovim-%EC%B4%88%EA%B0%84%EB%8B%A8-%EC%84%B8%ED%8C%85
