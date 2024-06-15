local options = {
	lsp_fallback = false,

	formatters_by_ft = {
		lua = { "stylua" },

		rust = { "rustfmt" },
		tex = { "latexindent" },
		cpp = { "clang-format" },
	},
	format_after_save = {
		lsp_fallback = true,
	},
}

require("conform").setup(options)
