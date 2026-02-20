-- Plugin specifications for lazy.nvim
-- Converted from packer.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Disable packer
  { "wbthomason/packer.nvim", enabled = false },

  -- Lua functions
  { "nvim-lua/plenary.nvim" },

  -- Must Have In VIM
  { "mbbill/undotree" },
  { "nvim-tree/nvim-tree.lua", config = function() require("plugins/nvim-tree") end },
  { "windwp/nvim-autopairs", config = function() require("plugins/nvim-autopairs") end },
  { "liuchengxu/vim-which-key" },
  { "terrortylor/nvim-comment", config = function() require("plugins/commenter") end },
  { "j-hui/fidget.nvim", config = function() require("plugins/fidget") end },
  { "tpope/vim-surround" },
  { "HiPhish/rainbow-delimiters.nvim", config = function() require("rainbow-delimiters.setup").setup() end },

  -- Theme
  { "NvChad/nvim-colorizer.lua", config = function() require("plugins/nvim-colorizer") end },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "Mofiqul/dracula.nvim", lazy = false, priority = 1000 },
  { "kyazdani42/nvim-web-devicons", lazy = false },
  { "nvim-lualine/lualine.nvim", config = function() require("plugins/statusline") end },
  { "xiyaowong/nvim-transparent", config = function() require("plugins/transparency") end },

  -- Tab / Buffer
  { "akinsho/nvim-bufferline.lua", config = function() require("plugins/bufferline") end },

  -- Git
  { "lewis6991/gitsigns.nvim", config = function() require("plugins/gitsigns") end },
  { "mattn/webapi-vim" },

  -- Auto Completion
  {
    "hrsh7th/nvim-cmp",
    config = function() require("plugins/cmp") end,
  },

  -- Language Servers
  { "neovim/nvim-lspconfig" },
  { "onsails/lspkind-nvim" },

  -- List of Completions
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-cmdline" },

  -- Snippets
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/vim-vsnip" },

  -- Rust
  { "rust-lang/rust.vim" },
  { "simrat39/rust-tools.nvim", config = function() require("plugins/rusty-tools") end },

  { "chentoast/marks.nvim", config = function() require("plugins/marks") end },

  -- Easy Motion
  { "phaazon/hop.nvim", branch = "v2", config = function() require("plugins/hop") end },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "master",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {"jsonc","rust","bash","css","html","yaml","toml","lua","svelte","vue","typescript","dart","comment","regex","tsx","json5","make"},
        sync_install = false,
        ignore_install = {"javascript"},
        highlight = {
          enable = true,
          disable = {"c","rust"},
          additional_vim_regex_highlighting = false
        },
        refactor = {
          highlight_definitions = {
            enable = false,
            clear_on_cursor_move = true
          }
        }
      })
    end
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("plugins/telescope") end
  },
  { "nvim-telescope/telescope-ui-select.nvim" },

  -- Debugging
  {
    "mfussenegger/nvim-dap",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function() require("plugins/dap-ui") end
  },

  -- Crates.nvim for Rust dependency management
  {
    "saecki/crates.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("crates").setup() end
  },

  -- Symbols-outline dependency
  { "nvim-neotest/nvim-nio" },

  -- Outline
  { "hedyhli/outline.nvim", config = function() require("plugins/outline") end },

  -- Trouble
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() require("plugins/trouble") end
  },

  -- Tabby AI plugin
  { "TabbyML/vim-tabby", config = function() require("plugins/tabbyai") end },

  -- Indent blankline
  { "lukas-reineke/indent-blankline.nvim", config = function() require("plugins/indent-blankline") end },

  -- Terminal(Float)
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function() require("toggleterm").setup() end
  },

  -- clangd inlayhint
  { "p00f/clangd_extensions.nvim" },

  -- zig lang
  { "ziglang/zig.vim" },

  -- :UnicodeTable
  { "chrisbra/unicode.vim" },
}, {
  ui = {
    border = "rounded",
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
