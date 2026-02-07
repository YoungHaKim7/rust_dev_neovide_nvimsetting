local ok, lualine = pcall(require, "lualine")
if not ok then
  -- Feline config for backwards compatibility during migration
  local vi_mode_provider = require("feline.providers.vi_mode")
  local git_provider = require("feline.providers.git")
  local lsp_provider = require("feline.providers.lsp")

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

  local components = {
    inactive = {},
    active = {
      -- left
      -- vi mode
      {
        {
          provider = function()
            return " " .. (vi_mode_provider.get_vim_mode() or "term") .. " "
          end,
          left_sep = {
            str = "",
            hl = function()
              return {
                name = vi_mode_provider.get_mode_highlight_name(),
                fg = colors.selection,
              }
            end,
          },
          right_sep = {
            str = "",
            hl = function()
              return {
                name = vi_mode_provider.get_mode_highlight_name(),
                fg = colors.selection,
              }
            end,
          },
          hl = function()
            return {
              fg = vi_mode_provider.get_mode_color(),
              bg = colors.selection,
              style = "bold",
            }
          end,
        },

        -- folder name
        {
          left_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          right_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          hl = {
            bg = colors.selection,
            fg = colors.yellow,
            style = "bold",
          },
          provider = function()
            local name = vim.fn.getcwd()
            return string.format(" %s %s ", "", vim.fn.fnamemodify(name, ":t"))
          end,
        },

        -- file name
        {
          left_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          right_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          hl = {
            bg = colors.selection,
            fg = colors.red,
            style = "bold",
          },
          enabled = function()
            local name = vim.api.nvim_buf_get_name(0)
            return name and name ~= ""
          end,
          provider = function()
            local name = vim.api.nvim_buf_get_name(0)
            local ext = vim.fn.fnamemodify(name, ":e")
            local icon_str = require("nvim-web-devicons").get_icon_color(
              name,
              ext,
              { default = true }
            )
            return string.format(
              " %s %s ",
              icon_str,
              vim.fn.fnamemodify(name, ":t")
            )
          end,
        },
      },

      -- middle
      {
        -- git branch
        {
          left_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          right_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          hl = {
            bg = colors.selection,
            fg = colors.pink,
            style = "bold",
          },
          enabled = git_provider.git_info_exists,
          provider = function()
            local branch, icon = git_provider.git_branch()
            return string.format(" %s%s ", icon, branch)
          end,
        },

        -- git changed
        {
          left_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          hl = {
            bg = colors.selection,
            fg = colors.cyan,
            style = "bold",
          },
          enabled = git_provider.git_info_exists,
          provider = function()
            local changed, icon = git_provider.git_diff_changed()
            if changed == "" then
              changed = 0
            end
            return string.format("%s%s", icon, changed)
          end,
        },

        -- git added
        {
          hl = {
            bg = colors.selection,
            fg = colors.green,
            style = "bold",
          },
          enabled = git_provider.git_info_exists,
          provider = function()
            local added, icon = git_provider.git_diff_added()
            if added == "" then
              added = 0
            end
            return string.format("%s%s", icon, added)
          end,
        },

        -- git removed
        {
          right_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          hl = {
            bg = colors.selection,
            fg = colors.orange,
            style = "bold",
          },
          enabled = git_provider.git_info_exists,
          provider = function()
            local removed, icon = git_provider.git_diff_removed()
            if removed == "" then
              removed = 0
            end
            return string.format("%s%s ", icon, removed)
          end,
        },
      },

      -- right
      {

        -- lsp errors
        {
          left_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          hl = {
            bg = colors.selection,
            fg = colors.red,
            style = "bold",
          },
          enabled = lsp_provider.is_lsp_attached,
          provider = function()
            local errors, icon = lsp_provider.diagnostic_errors()
            if errors == "" then
              errors = "0"
            end
            return string.format("%s%s", icon, errors)
          end,
        },

        -- lsp warnings
        {
          hl = {
            bg = colors.selection,
            fg = colors.orange,
            style = "bold",
          },
          enabled = lsp_provider.is_lsp_attached,
          provider = function()
            local warnings, icon = lsp_provider.diagnostic_warnings()
            if warnings == "" then
              warnings = "0"
            end
            return string.format("%s%s", icon, warnings)
          end,
        },

        -- lsp info
        {
          hl = {
            bg = colors.selection,
            fg = colors.foreground,
            style = "bold",
          },
          enabled = lsp_provider.is_lsp_attached,
          provider = function()
            local info, icon = lsp_provider.diagnostic_info()
            if info == "" then
              info = "0"
            end
            return string.format("%s%s", icon, info)
          end,
        },

        -- lsp hints
        {
          right_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          hl = {
            bg = colors.selection,
            fg = colors.cyan,
            style = "bold",
          },
          enabled = lsp_provider.is_lsp_attached,
          provider = function()
            local hints, icon = lsp_provider.diagnostic_hints()
            if hints == "" then
              hints = "0"
            end
            return string.format("%s%s ", icon, hints)
          end,
        },

        -- language server names
        {
          left_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          right_sep = {
            str = "",
            hl = {
              fg = colors.selection,
            },
          },
          hl = {
            bg = colors.selection,
            fg = colors.foreground,
            style = "bold",
          },
          enabled = lsp_provider.is_lsp_attached,
          provider = function()
            local names, icon = lsp_provider.lsp_client_names()
            return string.format(" %s%s ", icon, names)
          end,
        },
      },
    },
  }

  local disabled = { "NvimTree", "Outline" }

  R("feline").setup({
    components = components,
    theme = {
      fg = colors.foreground,
      cyan = colors.cyan,
      green = colors.green,
      orange = colors.orange,
      red = colors.red,
      magenta = colors.pink,
      violet = colors.violet,
      yellow = colors.yellow,
    },
    force_inactive = { filetypes = disabled },
  })

  vim.cmd(string.format("hi StatusLineNC guibg=%s", colors.background))
  vim.cmd(
    string.format(
      "hi NvimTreeStatusLine guibg=%s guifg=%s",
      colors.background,
      colors.background
    )
  )
  vim.cmd(string.format("hi NvimTreeStatusLineNC guibg=%s", colors.background))
  return
end

-- Lualine config
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

local function git_diff()
  local signs = {
    added = " ",
    changed = " ",
    removed = " ",
  }
  local results = {}
  for _, sign in ipairs({ "added", "changed", "removed" }) do
    local output = vim.fn.system({ "git", "diff", "--numstat", "HEAD" })
    local count = 0
    for line in output:gmatch("[^\r\n]+") do
      local added_str, removed_str = line:match("^(%d+)%s+(%d+)")
      if sign == "added" then
        count = count + (tonumber(added_str) or 0)
      elseif sign == "removed" then
        count = count + (tonumber(removed_str) or 0)
      else
        if tonumber(added_str) > 0 or tonumber(removed_str) > 0 then
          count = count + 1
        end
      end
    end
    if count > 0 then
      table.insert(results, signs[sign] .. count)
    end
  end
  return table.concat(results, " ")
end

local function get_mode_color()
  local mode_colors = {
    n = colors.green,
    i = colors.cyan,
    v = colors.purple,
    V = colors.purple,
    c = colors.orange,
    t = colors.green,
  }
  return mode_colors[vim.fn.mode()] or colors.green
end

lualine.setup({
  options = {
    theme = "dracula",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "NvimTree", "Outline" },
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        "mode",
        fmt = function(str)
          return " " .. str:sub(1, 3) .. " "
        end,
        color = function()
          return { fg = get_mode_color(), bg = colors.selection, gui = "bold" }
        end,
      },
    },
    lualine_b = {
      {
        "filetype",
        colored = true,
        icon_only = false,
        icon = { align = "left" },
        color = { bg = colors.selection, fg = colors.yellow, gui = "bold" },
        fmt = function(str)
          return "  " .. (str or "") .. " "
        end,
      },
    },
    lualine_c = {
      {
        "filename",
        color = { bg = colors.selection, fg = colors.red, gui = "bold" },
        fmt = function(name)
          local icon_str = require("nvim-web-devicons").get_icon_color(
            name,
            vim.fn.fnamemodify(name, ":e"),
            { default = true }
          )
          return " " .. icon_str .. " " .. name .. " "
        end,
      },
    },
    lualine_x = {
      {
        "branch",
        icon = "",
        color = { bg = colors.selection, fg = colors.pink, gui = "bold" },
        fmt = function(branch)
          return " " .. branch .. " "
        end,
      },
      {
        "diff",
        colored = true,
        diff_color = {
          added = { fg = colors.green },
          modified = { fg = colors.cyan },
          removed = { fg = colors.orange },
        },
        color = { bg = colors.selection },
        symbols = { added = " ", modified = " ", removed = " " },
        source = git_diff,
      },
    },
    lualine_y = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        sections = { "error", "warn", "info", "hint" },
        diagnostics_color = {
          error = { fg = colors.red },
          warn = { fg = colors.orange },
          info = { fg = colors.foreground },
          hint = { fg = colors.cyan },
        },
        color = { bg = colors.selection },
        symbols = { error = "", warn = "", info = "", hint = "" },
      },
    },
    lualine_z = {
      {
        function()
          local clients = vim.lsp.get_clients({ bufnr = 0 })
          local names = {}
          for _, client in pairs(clients) do
            table.insert(names, client.name)
          end
          if #names == 0 then
            return ""
          end
          return " " .. table.concat(names, ", ") .. " "
        end,
        color = { bg = colors.selection, fg = colors.foreground, gui = "bold" },
      },
    },
  },
})

vim.cmd(string.format("hi StatusLineNC guibg=%s", colors.background))
vim.cmd(
  string.format(
    "hi NvimTreeStatusLine guibg=%s guifg=%s",
    colors.background,
    colors.background
  )
)
vim.cmd(string.format("hi NvimTreeStatusLineNC guibg=%s", colors.background))
