return {
	"rose-pine/neovim",
	name = "rose-pine",
	dependencies = { "nyoom-engineering/oxocarbon.nvim", "shaunsingh/nord.nvim" },
	lazy = false,
	config = function()
		vim.cmd("colorscheme rose-pine")
	end,
}
