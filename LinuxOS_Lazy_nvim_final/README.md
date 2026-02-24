# Lazy 로 교체함 Packer종료
 
- 💤 A modern plugin manager for Neovim
  - https://github.com/folke/lazy.nvim

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
