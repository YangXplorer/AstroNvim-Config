
return {
  -- 安装 copilot 插件
  "github/copilot.vim",
  event = "VimEnter",
  config = function()
    -- Copilot 基础设置
    vim.g.copilot_no_tab_map = true -- 禁用默认的 `<Tab>` 键映射

    -- 自定义按键绑定，通常为 `<C-f>` 提交自动完成建议
    vim.api.nvim_set_keymap("i", "<C-f>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

    -- Copilot 提示的外观设置
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_filetypes = {
      ["*"] = true, -- 对所有文件类型启用 Copilot
      -- 如果你想在某些文件类型中禁用 Copilot，可以设为 false，例如：
      -- ["markdown"] = false,
      -- ["yaml"] = false,
    }
  end,
}
