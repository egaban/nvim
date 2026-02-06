return {
	"nvim-treesitter/nvim-treesitter",
	version = "v0.*",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}
