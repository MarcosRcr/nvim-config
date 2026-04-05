return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {},
    },
  },
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      local has_lsp, lsp = pcall(require, "lazyvim.plugins.lsp")
      if has_lsp and lsp and lsp.format then
        opts.lsp = opts.lsp or {}
        opts.lsp["code-actions"] = {
          enabled = function()
            local clients = vim.lsp.get_active_clients({ bufnr = 0 })
            for _, client in ipairs(clients) do
              if client.server_capabilities.codeActionProvider then
                return true
              end
            end
            return false
          end,
        }
      end
    end,
  },
}
