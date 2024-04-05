local options = {
	lsp_fallback = false,

	formatters_by_ft = {
		lua = { "stylua" },

		rust = { "rustfmt" },
		tex = { "latexindent" },
	},
}

require("conform").setup(options)
