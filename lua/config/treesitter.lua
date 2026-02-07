require("nvim-treesitter").setup({
	ensure_installed = { "python", "lua", "c", "cmake" },
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("TreesitterStart", { clear = true }),
	callback = function()
		pcall(vim.treesitter.start)
	end,
})
