vim.g.lua_enable_Cfname_matching = 0
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.updatetime = 300
vim.opt.timeoutlen = 400
vim.opt.syntax = "on"

if vim.fn.has("wsl") == 1 then
  vim.env.XDG_CONFIG_HOME = vim.env.HOME .. "/.config"
  vim.env.XDG_DATA_HOME = vim.env.HOME .. "/.local/share"
  vim.env.XDG_CACHE_HOME = vim.env.HOME .. "/.cache"
end
