return {
  "lervag/vimtex",
  ft = "tex",
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
    vim.g.vimtex_syntax_enabled = 1
    vim.g.vimtex_syntax_custom_envs = {}
    vim.g.vimtex_syntax_custom_envs_without_indent = {}
    vim.g.vimtex_syntax_math = 1
    vim.g.vimtex_syntax_conceal = {
      accents = 1,
      accents_math = 1,
     ligatures = 1,
      ligatures_math = 1,
      symbol = 1,
      symbol_math = 1,
    }
  end,
}
