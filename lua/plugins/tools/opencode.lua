return {
  "nickjvandyke/opencode.nvim",
  version = "*",
  dependencies = {
    "folke/snacks.nvim",
    optional = true,
    opts = {
      input = {},
      picker = {
        actions = {
          opencode_send = function(...) return require("opencode").snacks_picker_send(...) end,
        },
        win = {
          input = {
            keys = {
              ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
            },
          },
        },
      },
    },
  },
  config = function()
    vim.g.opencode_opts = {
      server = {
        start = function()
          require("opencode.terminal").open()
        end,
      },
    }

    vim.o.autoread = true

    vim.keymap.set({ "n", "x" }, "<C-a>", function()
      require("opencode").ask("@this: ", { submit = true })
    end, { desc = "Ask opencode…" })

    vim.keymap.set({ "n", "x" }, "<C-x>", function()
      require("opencode").select()
    end, { desc = "Execute opencode action…" })

    vim.keymap.set({ "n", "t" }, "<C-.>", function()
      require("opencode").toggle()
    end, { desc = "Toggle opencode" })

    vim.keymap.set({ "n", "x" }, "go", function()
      return require("opencode").operator("@this ")
    end, { desc = "Add range to opencode", expr = true })

    vim.keymap.set("n", "goo", function()
      return require("opencode").operator("@this ") .. "_"
    end, { desc = "Add line to opencode", expr = true })

    vim.keymap.set("n", "<leader>ao", function()
      require("opencode").toggle()
    end, { desc = "OpenCode AI" })
  end,
}