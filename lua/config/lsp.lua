-- Lazydev must be loaded before the LSP.
vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
		pcall(function()
			require("lazy").load({ plugins = { "lazydev.nvim" } })
		end)

		-- now we are sure lua_ls is enabled after lazydev
		vim.lsp.enable("lua_ls")
	end,
})

vim.lsp.enable({ "basedpyright", "clangd" })
