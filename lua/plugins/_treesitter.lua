
-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "typescript",
      "vue",
      "html",
      "json",
      "yaml",
      "go",
      "tsx",
      -- add more arguments for adding more treesitter parsers
    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (or "all")
    ignore_install = { "javascript" },
    highlight = {
      enable = true, -- 启用高亮
      additional_vim_regex_highlighting = false, -- 如果高亮有问题，可以将其设置为 true
    },
  },
}
