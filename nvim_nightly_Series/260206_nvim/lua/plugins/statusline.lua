local colors = {
  background = "#575268",
  current_line = "#DDB6F2",
  selection = "#161320",
  foreground = "#D9E0EE",
  comment = "#6272a4",
  cyan = "#96CDFB",
  green = "#99C794",
  orange = "#F99157",
  pink = "#F5E0DC",
  purple = "#C594C5",
  red = "#EC5f67",
  yellow = "#FAC863",
}

local function get_git_branch()
  local branch = vim.fn.systemlist("git rev-parse --abbrev-ref HEAD 2>/dev/null")[1]
  if branch and branch ~= "" then
    return branch
  end
  return nil
end

local function get_git_diff()
  local added = tonumber(vim.fn.systemlist("git diff --numstat HEAD 2>/dev/null | awk '{sum+=$1} END {print sum}'")[1]) or 0
  local changed = tonumber(vim.fn.systemlist("git diff --numstat HEAD 2>/dev/null | awk '{sum+=$2} END {print sum}'")[1]) or 0
  local removed = tonumber(vim.fn.systemlist("git diff HEAD 2>/dev/null | grep '^-' | wc -l | tr -d ' '")[1]) or 0
  return added, changed, removed
end

local function diagnostic_count(severity)
  local count = 0
  for _, diag in ipairs(vim.diagnostic.get(0, { severity = severity })) do
    count = count + 1
  end
  return count
end

require("lualine").setup({
  options = {
    theme = "tokyonight",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "NvimTree", "Outline" },
    globalstatus = false,
  },
  sections = {
    lualine_a = {
      {
        "mode",
        fmt = function(str)
          return " " .. str .. " "
        end,
        color = { bg = colors.selection, fg = colors.cyan, gui = "bold" },
        separator = { left = "", right = "" },
      },
    },
    lualine_b = {
      {
        "filename",
        color = { bg = colors.selection, fg = colors.yellow, gui = "bold" },
        separator = { left = "", right = "" },
        symbols = { modified = "", readonly = "" },
      },
    },
    lualine_c = {
      {
        "filetype",
        colored = true,
        icon_only = false,
        color = { bg = colors.selection, fg = colors.red, gui = "bold" },
        separator = { left = "", right = "" },
      },
    },
    lualine_x = {
      {
        function()
          local branch = get_git_branch()
          if branch then
            return " " .. branch
          end
          return ""
        end,
        color = { bg = colors.selection, fg = colors.pink, gui = "bold" },
        separator = { left = "", right = "" },
      },
      {
        function()
          local added, changed, removed = get_git_diff()
          local result = ""
          if added > 0 then
            result = result .. "+" .. added
          end
          if changed > 0 then
            result = result .. "~" .. changed
          end
          if removed > 0 then
            result = result .. "-" .. removed
          end
          return result ~= "" and result or nil
        end,
        color = { bg = colors.selection, fg = colors.cyan, gui = "bold" },
        separator = { left = "", right = "" },
      },
    },
    lualine_y = {
      {
        function()
          local errors = diagnostic_count(vim.diagnostic.severity.ERROR)
          return errors > 0 and ("E:" .. errors) or ""
        end,
        color = { bg = colors.selection, fg = colors.red, gui = "bold" },
        separator = { left = "", right = "" },
      },
      {
        function()
          local warnings = diagnostic_count(vim.diagnostic.severity.WARN)
          return warnings > 0 and ("W:" .. warnings) or ""
        end,
        color = { bg = colors.selection, fg = colors.orange, gui = "bold" },
        separator = { left = "", right = "" },
      },
      {
        function()
          local info = diagnostic_count(vim.diagnostic.severity.INFO)
          return info > 0 and ("I:" .. info) or ""
        end,
        color = { bg = colors.selection, fg = colors.foreground, gui = "bold" },
        separator = { left = "", right = "" },
      },
      {
        function()
          local hints = diagnostic_count(vim.diagnostic.severity.HINT)
          return hints > 0 and ("H:" .. hints) or ""
        end,
        color = { bg = colors.selection, fg = colors.cyan, gui = "bold" },
        separator = { left = "", right = "" },
      },
    },
    lualine_z = {
      {
        function()
          local clients = vim.lsp.get_clients({ bufnr = 0 })
          local names = {}
          for _, client in ipairs(clients) do
            table.insert(names, client.name)
          end
          return #names > 0 and table.concat(names, ", ") or ""
        end,
        color = { bg = colors.selection, fg = colors.foreground, gui = "bold" },
        separator = { left = "", right = "" },
      },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
})

vim.cmd(string.format("hi StatusLineNC guibg=%s", colors.background))
vim.cmd(string.format("hi NvimTreeStatusLine guibg=%s guifg=%s", colors.background, colors.background))
vim.cmd(string.format("hi NvimTreeStatusLineNC guibg=%s", colors.background))
