return {
  -- VImTex configuration
  {
    'lervag/vimtex',
      init = function ()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_quickfix_mode = 0

			  vim.g.vimtex_syntax_enabled = 1
			  vim.g.vimtex_compiler_latexmk = {
				  options = {
					  "-shell-escape",
					  "-verbose",
					  "-file-line-error",
					  "-synctex=0",
					  "-interaction=nonstopmode",

				  }
			}
			  -- vim.g.vimtex_quickfix_mode = 0
      end,
      event = "BufRead",
  },
}
