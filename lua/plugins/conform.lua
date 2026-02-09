return {
	"stevearc/conform.nvim",
	event = "InsertEnter",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black", "isort" },
			julia = { "juliaformatter" },
		},
		format_after_save = {
			lsp_format = "fallback",
		},
	},
}
