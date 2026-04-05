return {
  "nvim-tree/nvim-web-devicons",
  lazy = true,
  opts = {
    override = {
      ts = { icon = "󰛦", name = "TypeScript" },
      tsx = { icon = "󰜈", name = "TSX" },
      js = { icon = "󰌞", name = "JavaScript" },
      jsx = { icon = "󰜈", name = "JSX" },
      py = { icon = "󰌠", name = "Python" },
      lua = { icon = "󰢱", name = "Lua" },
      tex = { icon = "󰙵", name = "Tex" },
    },
    color_icons = true,
    default = true,
  },
}
