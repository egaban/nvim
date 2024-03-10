return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	requires = {
		{ "nvim-lua/plenary.nvim" },
	},
	config = function()
		require("configs.harpoon")
	end,
	event = "VeryLazy",
}
