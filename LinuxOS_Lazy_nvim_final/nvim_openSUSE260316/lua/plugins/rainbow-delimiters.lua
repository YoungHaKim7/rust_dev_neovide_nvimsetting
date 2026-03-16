-- This module contains a number of default definitions
local rainbow_delimiters = require 'rainbow-delimiters'

-- Disable for nvim-tree and other special buffers
local disabled_buftypes = {'NvimTree', 'lazy', 'TelescopePrompt', 'alpha', 'neo-tree', 'qf', 'neo-tree-popup', 'neo-tree-preview'}

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
    disable = function(bufnr, filetype)
        -- Disable for blacklisted filetypes
        for _, ft in ipairs(disabled_buftypes) do
            if filetype == ft or vim.bo[bufnr].filetype == ft then
                return true
            end
        end
        -- Disable if no treesitter parser exists
        local ok, parser = pcall(vim.treesitter.get_parser, bufnr)
        return not ok or parser == nil
    end,
}
