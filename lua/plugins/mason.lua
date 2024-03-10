return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			-- Lua
			"lua-language-server",
			"stylua",

			-- Latex
			"texlab",

			-- Go
			"gopls",

			-- Rust
			"rust-analyzer",

			-- Python
			"pyright",
		},
	},
}
