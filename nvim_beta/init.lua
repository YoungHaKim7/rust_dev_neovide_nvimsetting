require("globals")
require("vim_g")
require("settings")
require("mappings")
require("autocmd")
-- LSP config
require("lspconfig")
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.zls.setup{}
require'lspconfig'.asm_lsp.setup{}
-- Install Plugins
require("packages")
-- Init Plugins
require("theme")
require("plugins/transparency")
require("plugins/commenter")
require("plugins/marks")
require("plugins/hop")
require("plugins/statusline")
require("plugins/nvim-autopairs")
require("plugins/bufferline")
require("plugins/nvim-colorizer")
require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/gitsigns")
-- Auto Completions and LSP
require("plugins/cmp")
require("plugins/telescope")
require("plugins/rusty-tools")
require("plugins/dap-ui")
require("plugins/cargo_crates")
-- my Plugin
require("plugins/symbols-outline")
require("plugins/trouble")
require("plugins/tabbyai")
require("plugins/indent-blankline")
require("plugins/fidget")
require("plugins/rainbow-delimiters")
require('rainbow-delimiters.setup').setup()


-- my theme
require("theme/tokyonight")
require("theme/dracula")

-- inlayhints
require("inlayhints/clangd_extensions")
require("clangd_extensions.inlay_hints").setup_autocmd()
require("clangd_extensions.inlay_hints").set_inlay_hints()

-- vim.opt.guifont = "Hack Nerd Font Mono:30"
