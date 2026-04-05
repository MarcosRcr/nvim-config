return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      size = 15,
      open_mapping = [[<c-\>]],
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
      direction = "float",
      float_opts = { border = "curved" },
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      vim.keymap.set("n", "<leader>th", function()
        require("toggleterm").toggle(nil, nil, nil, "horizontal")
      end, { desc = "Terminal horizontal" })

      vim.keymap.set("n", "<leader>tv", function()
        require("toggleterm").toggle(nil, nil, nil, "vertical")
      end, { desc = "Terminal vertical" })

      vim.keymap.set("n", "<leader>tf", function()
        require("toggleterm").toggle(nil, nil, nil, "float")
      end, { desc = "Terminal flotante" })
    end,
  },
}