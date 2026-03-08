require("globals")
require("vim_g")
require("settings")
require("mappings")
require("autocmd")

-- Install Plugins (lazy.nvim)
require("lazy_specs")

-- LSP config
require("lspconfig")
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.asm_lsp.setup{}
require'lspconfig'.jdtls.setup{ cmd = { 'jdtls' } }
require'lspconfig'.zls.setup{}
-- require'lspconfig'.rust_analyzer.setup{
--   settings = {
--     ['rust-analyzer'] = {
--       diagnostics = {
--         enable = true;
--       }
--     }
--   }
-- }

-- Theme
require("theme")
require("theme/tokyonight")
require("theme/dracula")

-- inlayhints
require("inlayhints/clangd_extensions")

-- backup & undo
require("undo_swap")

-- vim.opt.guifont = "Hack Nerd Font Mono:30"
