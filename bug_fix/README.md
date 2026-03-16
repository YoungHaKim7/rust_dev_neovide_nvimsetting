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

Where is your Neovim configuration located? I can help you add the fix directly if you point me to the config file.
