return {
	"nvim-telescope/telescope.nvim",
	version = "v0.2.1",
	lazy = false,
	config = function()
		require("config.telescope")
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
}
