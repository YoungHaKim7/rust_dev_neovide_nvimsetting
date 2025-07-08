require('gitsigns').setup {
  debug_mode          = true, -- You must add this to enable debug messages
  signs               = {
    -- Colors may be changed via the according highlight groupd, check :h gitsigns-highlight-groups
    add          = { text = '+' },
    change       = { text = '~' },
    delete       = { text = '󰧧' },
    topdelete    = { text = '󰆴' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signcolumn          = true,  -- Toggle with `:Gitsigns toggle_signs`
  -- different highlight options
  numhl               = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl              = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff           = false, -- Toggle with `:Gitsigns toggle_word_diff`
  -- Watch changes
  watch_gitdir        = {
    enable = true,
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  -- Virtual text with information about the commit where it originates
  -- current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  -- current_line_blame_opts = {
  --   virt_text = true,
  --   virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
  --   delay = 1000,
  --   ignore_whitespace = false,
  -- },
  -- current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  sign_priority       = 6,     -- should be below LSP signs
  update_debounce     = 100,
  status_formatter    = nil,   -- Use default
  max_file_length     = 40000, -- Disable if file is longer than this (in lines)
  preview_config      = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  -- yadm                = {
  --   enable = false
  -- },
  on_attach = function(bufnr)
    local gitsigns = require('gitsigns')

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then
        vim.cmd.normal({']c', bang = true})
      else
        gitsigns.nav_hunk('next')
      end
    end)

    map('n', '[c', function()
      if vim.wo.diff then
        vim.cmd.normal({'[c', bang = true})
      else
        gitsigns.nav_hunk('prev')
      end
    end)

    -- Actions
    map('n', 'Ghs', gitsigns.stage_hunk)
    map('n', 'Ghr', gitsigns.reset_hunk)
    map('v', 'Ghs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('v', 'Ghr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('n', 'GhS', gitsigns.stage_buffer)
    map('n', 'Ghu', gitsigns.undo_stage_hunk)
    map('n', 'GhR', gitsigns.reset_buffer)
    map('n', 'Ghp', gitsigns.preview_hunk)
    map('n', 'Ghb', function() gitsigns.blame_line{full=true} end)
    map('n', 'Gtb', gitsigns.toggle_current_line_blame)
    map('n', 'Ghd', gitsigns.diffthis)
    map('n', 'GhD', function() gitsigns.diffthis('~') end)
    map('n', 'Gtd', gitsigns.toggle_deleted)

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}
