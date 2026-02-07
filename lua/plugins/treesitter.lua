return {
	"nvim-treesitter/nvim-treesitter",
	version = "v0.*",
	event = { "BufReadPre", "BufNewFile" },
	cmd = { "TSUpdate", "TSInstall" },
	build = ":TSUpdate",
	opts = {},
	config = function()
		require("config.treesitter")
	end,
}
