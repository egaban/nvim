return {
	"cbochs/grapple.nvim",
	opts = {
		scope = "git",
	},
	dependencies = {
		{ "nvim-tree/nvim-web-devicons", lazy = true },
	},
	event = { "BufReadPost", "BufNewFile" },
	keys = {
		{ "<leader>a", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
		{ "<C-e>", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
		{ "<leader>n", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
		{ "<leader>p", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
		{ "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
		{ "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
		{ "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
		{ "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
		{ "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "Select fifth tag" },
	},
}
