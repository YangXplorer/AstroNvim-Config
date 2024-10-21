
if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  -- 加载社区插件包
  { "AstroNvim/astrocommunity" },

  -- 导入社区的配色方案插件
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.everforest" },

  -- 配置 AstroUI 插件
  {
    "AstroNvim/astroui",
    opts = function(_, opts)
      opts.colorscheme = "everforest"
      opts.highlights = {
        init = { -- 这个表将覆盖所有主题的高亮
          -- Normal = { bg = "#000000" },
        },
        astrodark = { -- 当应用 astrodark 主题时的高亮覆盖
          -- Normal = { bg = "#000000" },
        },
      }
      opts.icons = {
        LSPLoading1 = "⠋",
        LSPLoading2 = "⠙",
        LSPLoading3 = "⠹",
        LSPLoading4 = "⠸",
        LSPLoading5 = "⠼",
        LSPLoading6 = "⠴",
        LSPLoading7 = "⠦",
        LSPLoading8 = "⠧",
        LSPLoading9 = "⠇",
        LSPLoading10 = "⠏",
      }
    end,
  },
}
