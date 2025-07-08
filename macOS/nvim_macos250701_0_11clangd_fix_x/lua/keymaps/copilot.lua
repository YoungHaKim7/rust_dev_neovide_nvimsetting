local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

vim.g.mapleader = " "

vim.api.nvim_set_keymap('i', '<C-b>', 'copilot#Accept()', true)
