# Lazy 로 교체함 Packer종료
 
- 💤 A modern plugin manager for Neovim
  - https://github.com/folke/lazy.nvim

tree-sitter-cli는 이걸로 세팅하면된다.
```
cargo install tree-sitter-cli
```

# NixOS에서 에러나서 해결법


● The issue isn't with your Rust code - it's an environment setup problem.
   bindgen (a dependency of tree-sitter-cli) requires libclang to be
  installed.
                                                                          
  Since you're on NixOS, here are the solutions:
                                                                          
## Option 1: Install LLVM/libclang in your nix-shell


  Add llvm to your shell.nix or use:
  ```nix
  nix-shell -p llvmPackages.clang
  ```
## Option 2: Set LIBCLANG_PATH permanently

● Searched for 1 pattern (ctrl+o to expand)  
                                
● Found it! Set the environment variable:                                 

  ```bash           
  export LIBCLANG_PATH=/nix/store/m1cx91w9g9iixqb5hwim9hp6dj834akq-clang-21.1.7-lib/lib                                                           
  ```
  
  Then retry your build.                                                  
                                                                          
## Option 3: Create a shell.nix for your project

```nix
● Write(shell.nix)                                                        
  ⎿  Wrote 10 lines to shell.nix                                          
       1 { pkgs ? import <nixpkgs> {} }:                                  
       2    
       3 pkgs.mkShell {                                                   
       4   nativeBuildInputs = with pkgs; [                               
       5     rustc                                                        
       6     cargo
       7     rust-analyzer                                                
       8     llvmPackages.clang                                           
       9   ];                                                             
      10 }                                                                
```                                                                         
- ● Created a shell.nix for your project. Now run:                          
  ```                                                                        
  nix-shell                                                               
  ```                                                                     
  Then try building again. This will give you a proper environment with   
  libclang available. 
```

# neovide세팅관련

```lua
-- neovide setting
vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_remember_window_size = true
vim.o.guifont = "Hack Nerd Font:h25"
vim.g.neovide_hide_mouse_when_typing = true

-- GUI config(neovide)
vim.g.neovide_opacity = 0.95
vim.g.neovide_remember_window_size = true
-- vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_cursor_vfx_mode = ""
-- vim.g.neovide_cursor_animation_length = 0.9
-- vim.g.neovide_cursor_tail_size = 0.1
-- allow us to use the cmd key in neovide
vim.g.neovide_input_use_logo= true


vim.opt.guifont = "Hack Nerd Font Mono:22"
vim.g.popui_border_style = "double"

-- run = :checkhealth
vim.g.loaded_python_provider = false
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.ruby_host_prog = "/usr/bin/ruby"
vim.g.loaded_perl_provider = false
vim.g.python_host_prog = "/Users/uriah/.pyenv/shims/python"

vim.g.session_autosave = "yes"
vim.g.session_autoload = "yes"
vim.g.session_default_to_last = true
-- Rust Globals
vim.g.rust_clip_command = "pbcopy"
vim.g.rustfmt_autosave = true
vim.g.gruvbox_material_sign_column_background = "none"
```

# Lazy.nvim으로 교체함(260221)
- https://github.com/folke/lazy.nvim

## Migration Complete! ✅

Successfully migrated from **packer.nvim** to **lazy.nvim**.

### What changed:

| File | Status |
|------|--------|
| `init.lua` | ✅ Updated - Uses `lazy_specs.lua` instead of `packages.lua` |
| `lua/lazy_specs.lua` | ✅ Created - All 36 plugins converted to lazy format |
| `lua/packages.lua` | ✅ Deleted - No longer needed |
| `plugin/packer_compiled.lua` | ✅ Deleted - No longer needed |

### Healthcheck Summary:

| Category | Status |
|----------|--------|
| **lazy.nvim** | ✅ v11.17.5 installed and working |
| **nvim-treesitter** | ✅ All parsers installed |
| **telescope** | ✅ Working |
| **clangd_extensions** | ✅ Working |
| **dap** | ✅ Working |
| **crates** | ✅ Working |

### Minor remaining warnings (non-critical):

1. **fidget nvim-tree** - Cosmetic warning during healthcheck only
2. **hop healthcheck** - Healthcheck API issue, plugin works fine
3. **luarocks** - Not needed, no plugins use it
4. **vim.validate deprecation** - From nvim-treesitter (on master branch)

### Key benefits:

- ✅ No more `vim.tbl_islist` deprecation warning from packer
- ✅ Faster startup with lazy-loading capability
- ✅ Modern, actively maintained plugin manager
- ✅ Better performance monitoring with `:Lazy` command

### Usage:

- `:Lazy` - Open plugin manager UI
- `:Lazy sync` - Update all plugins
- `:Lazy health` - Check lazy.nvim status

<hr />
