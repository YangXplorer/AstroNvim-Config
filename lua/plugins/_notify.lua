
return {
  "rcarriga/nvim-notify",
  opts = {
    stages = "static", -- 动画效果
    render = "default", -- 渲染模式
    timeout = 3000, -- 通知显示的时间（毫秒）
    icons = {
      ERROR = "", -- 错误提示
      WARN = "", -- 警告提示
      INFO = "", -- 信息提示
      DEBUG = "", -- 调试提示
      TRACE = "✎", -- 跟踪提示
    },
    fps = 15, -- 帧率
    max_width = 50, -- 最大宽度
    max_height = 10, -- 最大高度
    -- 禁用内置的某些提示时的透明度设置
    on_open = function(win)
      vim.api.nvim_win_set_option(win, "winblend", 20) -- 设置透明度
    end,
  },
  config = function(_, opts)
    local notify = require("notify")
    notify.setup(opts) -- 应用 opts 中的配置
    vim.notify = notify -- 将 notify 设置为默认通知系统
  end,
}
