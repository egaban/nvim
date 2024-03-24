local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		rust = { "rustfmt" },
	},
}

require("conform").setup(options)
