return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        use_languagetree = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024
          local ok, stats = pcall(vim.inspect.saved, vim.inspect)
          if ok and stats then
            local filepath = vim.fn.expand("%:p")
            local filesize = vim.fn.getfsize(filepath)
            if filesize > max_filesize then
              return true
            end
          end
        end,
      },
      incremental_selection = {
        enable = false,
      },
      indent = {
        enable = false,
      },
    },
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
  },
}
