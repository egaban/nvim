return {
	dir = "~/.config/nvim/lua/pomodoro",
	opts = {},
	config = function()
		require("pomodoro").setup({})
	end,
}
