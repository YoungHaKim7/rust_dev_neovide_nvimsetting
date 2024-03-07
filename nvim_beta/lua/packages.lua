require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    -- lua functions
    use("nvim-lua/plenary.nvim")
    -- Must Have In VIM
    use({"mbbill/undotree"})
    use("kyazdani42/nvim-tree.lua")
    use("windwp/nvim-autopairs")
    use("liuchengxu/vim-which-key")
    use("terrortylor/nvim-comment")
    use("j-hui/fidget.nvim")
    -- use({
    --     "kylechui/nvim-surround",
    --     version = "*", -- Use for stability; omit to use `main` branch for the latest features
    --     config = function()
    --         require("nvim-surround").setup({
    --             -- Configuration here, or leave empty to use defaults
    --         })
    --     end
    -- })
    -- Rainbow_Parentheses.
    use("HiPhish/rainbow-delimiters.nvim")
    -- Vim-Surround
    use("tpope/vim-surround")
    -- Theme
    use("norcalli/nvim-colorizer.lua")
    -- use({"mhartington/oceanic-next"})
    use("folke/tokyonight.nvim")
    -- use({"ellisonleao/gruvbox.nvim"})
    use("Mofiqul/dracula.nvim")
    use("kyazdani42/nvim-web-devicons")
    use({"famiu/feline.nvim"})
    use({"xiyaowong/nvim-transparent"})
    -- Tab / Buffer
    use("akinsho/nvim-bufferline.lua")
    -- Git
    use("lewis6991/gitsigns.nvim")
    use("mattn/webapi-vim")
    -- Auto Completion
    use("hrsh7th/nvim-cmp")
    -- Language Servers
    use("neovim/nvim-lspconfig")
    use("onsails/lspkind-nvim")
    -- List of Completions
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")
    -- Snippets
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")
    -- Rust
    -- add this so we can test under cursor with RustTest
    use("rust-lang/rust.vim")
    use("simrat39/rust-tools.nvim")
    use("chentoast/marks.nvim")
    -- Easy Motion
    use("phaazon/hop.nvim")
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'nvim-treesitter/nvim-treesitter-refactor',
        requires = {{'nvim-treesitter/nvim-treesitter'}}
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {'nvim-telescope/telescope-ui-select.nvim' }
    -- Debugging
    use {
        'mfussenegger/nvim-dap',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use {
        'saecki/crates.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function()
            require('crates').setup()
        end
    }
    -- use({
    --     'mrjones2014/dash.nvim',
    --     run = 'make install',
    --   })
    -- use {"preservim/tagbar"}
    use {"simrat39/symbols-outline.nvim"}
    use {"folke/trouble.nvim",
      require = {{'nvim-tree/nvim-web-devicons' }},
      opts = {},
      -- config = function()
    }
    --- Tabby AI plugin
    use { 'TabbyML/vim-tabby' }
    -- indent
    use {"lukas-reineke/indent-blankline.nvim"}
    -- Terminal(Float)
    use {"akinsho/toggleterm.nvim",
        version = '*',
        config = function()
        require("toggleterm").setup()
    end
    }

    -- clangd inlayhint
    use {"p00f/clangd_extensions.nvim"}

    -- zig lang
    use {"ziglang/zig.vim"}


end)
