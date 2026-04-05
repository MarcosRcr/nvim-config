local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local has_lazy = (vim.uv or vim.loop).fs_stat(lazy_path) ~= nil

if not has_lazy then
  local repo_url = "https://github.com/folke/lazy.nvim.git"
  local clone_result = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", repo_url, lazy_path })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { clone_result, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazy_path)

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins.core" },
    { import = "plugins.ui" },
    { import = "plugins.tools" },
    { import = "plugins.langs" },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
    cache = { enabled = true },
  },
})
