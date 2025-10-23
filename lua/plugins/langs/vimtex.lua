return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = "okular"
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk = {
      build_dir = "build",
      options = {
        "-pdf",
        "-interaction=nonstopmode",
        "-synctex=1",
        "-shell-escape",
      },
    }
  end,
}
