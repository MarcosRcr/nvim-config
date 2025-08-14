return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      size = 15, -- alto/ancho por defecto
      open_mapping = [[<C-\>]], -- abre con Ctrl + \
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
      direction = "float", -- por defecto flotante
      float_opts = {
        border = "curved",
      },
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      -- Atajos para cambiar tipo de terminal
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
