# openSUSE fix(260316)
- This is a Neovim plugin error, not related to your Rust project. The `rainbow-delimiters.nvim` plugin is trying to attach to the nvim-tree buffer, which doesn't have a treesitter parser.

Here's how to fix it. You need to disable `rainbow-delimiters` for nvim-tree buffers.

Find your Neovim config file (typically `~/.config/nvim/init.lua` or similar) and add this configuration:

**If you're using lazy.nvim:**

```lua
{
  "HiPhish/rainbow-delimiters.nvim",
  event = "BufRead",
  config = function()
    local rainbow_delimiters = require('rainbow-delimiters')

    vim.g.rainbow_delimiters = {
      strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['no-op'],
      },
      query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
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
      -- Disable for nvim-tree and other special buffers
      blacklist = { 'NvimTree', 'lazy', 'TelescopePrompt', 'alpha' },
    }
  end,
}
```

**Or add this autocmd to your config:**

```lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "NvimTree",
  callback = function()
    vim.b.rainbow_delimiters = nil
  end,
})
```

**Or using a whitelist approach (only enable for programming languages):**

```lua
vim.g.rainbow_delimiters = {
  whitelist = { 'lua', 'rust', 'python', 'javascript', 'typescript', 'go', 'java', etc }
}
```

```lua
 Update(~/.config/nvim/lua/plugins/rainbow-delimiters.lua)
  ⎿  Added 2 lines
      25          'RainbowDelimiterViolet',
      26          'RainbowDelimiterCyan',
      27      },
      28 +    -- Disable for nvim-tree and other special buffers
      29 +    blacklist = {'NvimTree', 'lazy', 'TelescopePrompt', 'alpha', 'neo-tree', 'qf'},
      30  }
```

Fixed. I added a `blacklist` to your rainbow-delimiters config. The plugin will now skip:
- `NvimTree` 
- `lazy`
- `TelescopePrompt`
- `alpha`
- `neo-tree`
- `qf` (quickfix)

Perfect! I've fixed the rainbow-delimiters error. Here's what I changed:

## Changes Made:

### 1. `/home/gy/.config/nvim/lua/plugins/rainbow-delimiters.lua`
- Removed the redundant `require('rainbow-delimiters.setup').setup()` call that was being executed before the configuration
- Added an autocommand that only attaches rainbow-delimiters to buffers that have a treesitter parser available
- This prevents the plugin from trying to attach to special buffers (like fidget notification windows) that don't have parsers

### 2. `/home/gy/.config/nvim/lua/lazy_specs.lua`
- Changed the rainbow-delimiters configuration to use the proper plugin config file
- Added `nvim-treesitter` as a dependency so rainbow-delimiters loads after treesitter

### 3. `/home/gy/.config/nvim/lua/plugins/treesitter.lua`
- Added more common parsers (`vim`, `markdown`, `javascript`, `python`, `go`) to ensure better coverage

## To Apply the Fix:

Simply restart Neovim. The changes will take effect automatically:

```bash
nvim
```

- The error should now be resolved. The rainbow-delimiters plugin will only activate for file types that have treesitter parsers installed, preventing the "attempt to index local 'parser' (a nil value)" error.

- Restart Neovim and the error should be gone.

Fixed. The issue was:

1. **Wrong option**: `blacklist` is not valid - should be `disable` function
2. **Parser check**: The old autocmd was causing issues by checking parsers too early

The new config properly disables rainbow-delimiters for:
- Special buffers (NvimTree, Telescope, lazy, etc.)
- Any filetype without a treesitter parser

**Restart nvim** for changes to take effect:
```bash
nvim
```

```lua
 ../../.local/share/nvim/lazy/cmp-buffer/lua/cmp_buffer/source.lua
╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌
 31  ---@return cmp_buffer.Options
 32  source._validate_options = function(_, params)
 33    local opts = vim.tbl_deep_extend('keep', params.option, defaults)
 34 -  vim.validate(                                                                                                  
 34 +  vim.validate({                                                                                                 
 35      keyword_length = { opts.keyword_length, 'number' },
 36      keyword_pattern = { opts.keyword_pattern, 'string' },
 37      get_bufnrs = { opts.get_bufnrs, 'function' },
 38      indexing_batch_size = { opts.indexing_batch_size, 'number' },
 39      indexing_interval = { opts.indexing_interval, 'number' }
 40 -  )                                                                                                              
 40 +  })                                                                                                             
 41    return opts
 42  end
 43  
```


```lua
● Update(~/.config/nvim/lua/plugins/rainbow-delimiters.lua)                                                     
                                                                                                              
────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 Edit file                                                                                                      
 ../../../.config/nvim/lua/plugins/rainbow-delimiters.lua                                                       
╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌
 2  local rainbow_delimiters = require 'rainbow-delimiters'                                                     
 3  
 4  -- Disable for nvim-tree and other special buffers
 5 -local disabled_buftypes = {'NvimTree', 'lazy', 'TelescopePrompt', 'alpha', 'neo-tree', 'qf', 'neo-tree-popup
   -', 'neo-tree-preview'}                                                                                      
 5 +local disabled_buftypes = {'NvimTree', 'nvimtree', 'lazy', 'TelescopePrompt', 'alpha', 'neo-tree', 'qf', 'ne
   +o-tree-popup', 'neo-tree-preview'}                                                                          
 6                                                                    
 7  vim.g.rainbow_delimiters = {
 8      strategy = {

```


```lua
Edit file                                                                                                      
 ../../../.config/nvim/lua/plugins/rainbow-delimiters.lua                                                       
╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌
 27          'RainbowDelimiterCyan',                                                                            
 28      },                                                                                                     
 29      disable = function(bufnr, filetype)
 30 +        -- Get filetype if not provided                                                                    
 31 +        if not filetype then                                                                               
 32 +            filetype = vim.bo[bufnr].filetype                                                              
 33 +        end                                                                                                
 34 +                                                                                                           
 35          -- Disable for blacklisted filetypes
 36          for _, ft in ipairs(disabled_buftypes) do
 37              if filetype == ft or vim.bo[bufnr].filetype == ft then
 38                  return true
 39              end
 40          end
 41 +                                                                                                           
 42          -- Disable if no treesitter parser exists
 43          local ok, parser = pcall(vim.treesitter.get_parser, bufnr)
 38 -        return not ok or parser == nil                                                                     
 44 +        if not ok or parser == nil then                                                                    
 45 +            return true                                                                                    
 46 +        end                                                                                                
 47 +                                                                                                           
 48 +        -- Additional check for special buffers                                                            
 49 +        local buftype = vim.bo[bufnr].buftype                                                              
 50 +        if buftype ~= '' then                                                                              
 51 +            return true                                                                                    
 52 +        end                                                                                                
 53 +                                                                                                           
 54 +        return false                                                                                       
 55      end,
 56  }

```


```lua
Update(~/.config/nvim/lua/lazy_specs.lua)

────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 Edit file
 ../../../.config/nvim/lua/lazy_specs.lua
╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌
  80      "nvim-treesitter/nvim-treesitter",
  81      build = ":TSUpdate",
  82      branch = "master",
  83 -    config = function()                                                                                   
  84 -      require("nvim-treesitter.configs").setup({                                                          
  85 -        ensure_installed = {"jsonc","rust","bash","css","html","yaml","toml","lua","svelte","vue","typescr
     -ipt","dart","comment","regex","tsx","json5","make"},                                                      
  86 -        sync_install = false,                                                                             
  87 -        ignore_install = {"javascript"},                                                                  
  88 -        highlight = {                                                                                     
  89 -          enable = true,                                                                                  
  90 -          disable = {"c","rust"},                                                                         
  91 -          additional_vim_regex_highlighting = false                                                       
  92 -        },                                                                                                
  93 -        refactor = {                                                                                      
  94 -          highlight_definitions = {                                                                       
  95 -            enable = false,                                                                               
  96 -            clear_on_cursor_move = true                                                                   
  97 -          }                                                                                               
  98 -        }                                                                                                 
  99 -      })                                                                                                  
 100 -    end                                                                                                   
  83 +    config = function() require("plugins/treesitter") end                                                 
  84    },
  85  
  86    -- Telescope
```
