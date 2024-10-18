
return {
  -- 加载 alpha-nvim 插件，用于配置 dashboard
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")

      -- 设置 header
      dashboard.section.header.val = {
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                     YangXplorer     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
      }

      -- 设置按钮
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
        dashboard.button("m", "󱌣  Mason", ":Mason<CR>"),
        dashboard.button("u", "󰂖  Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
        dashboard.button("d", "  datahub", ":cd ~/Projects/Python/datahub-backend/ | :edit .<CR>"),
        dashboard.button("h", "  neohub", ":cd ~/Projects/NeoHub/NeoHub/ | :edit .<CR>"),
        dashboard.button("b", "  backend", ":cd ~/Projects/NeoHub/NeoHub-Backend/ | :edit .<CR>"),
        dashboard.button("l", "  learning", ":cd ~/Projects/Learning/ | :edit .<CR>"),
        dashboard.button("v", "  astronvim", ":cd ~/.config/nvim/ | :edit .<CR>"),
      }

      -- 设置 footer
      dashboard.section.footer.val = "🚀  Have a productive coding session!"

      -- 设置整体布局
      dashboard.config.layout = {
        { type = "padding", val = 1 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
        { type = "padding", val = 1 },
        dashboard.section.footer,
      }

      return dashboard
    end,
    config = function(_, dashboard)
      require("alpha").setup(dashboard.opts)
    end,
  },
}
