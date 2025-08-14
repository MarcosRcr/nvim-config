return {
  "github/copilot.vim",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    vim.cmd(":Copilot setup")
  end,
}
