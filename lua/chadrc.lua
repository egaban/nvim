local M = {}

M.ui = {
	theme = "rosepine",
	tabufline = {
		enabled = false,
	},
}

-- Snippets
local nvim_config = vim.fn.stdpath("config")
vim.g.vscode_snippets_path = nvim_config .. "/snippets"

-- Disable search highlight
vim.opt.hlsearch = false

return M
