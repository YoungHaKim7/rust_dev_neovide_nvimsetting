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
}
