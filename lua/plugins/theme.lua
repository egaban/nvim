return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			styles = {
				italic = false,
			},
			palette = {
				main = {
					base = "#0D1017",
				},
			},
			highlight_groups = {
				TelescopeNormal = { bg = "base" },
				TelescopeBorder = { fg = "overlay", bg = "base" },
				TelescopePromptNormal = { bg = "base" },
				TelescopePromptBorder = { fg = "overlay", bg = "base" },
				TelescopePromptTitle = { fg = "love", bg = "base" },
				TelescopePreviewNormal = { bg = "base" },
				TelescopePreviewBorder = { fg = "overlay", bg = "base" },
				TelescopePreviewTitle = { fg = "iris", bg = "base" },
				TelescopeResultsNormal = { bg = "base" },
				TelescopeResultsBorder = { fg = "overlay", bg = "base" },
				TelescopeResultsTitle = { fg = "foam", bg = "base" },
			},
		})

		vim.cmd.colorscheme("rose-pine")
	end,
}
