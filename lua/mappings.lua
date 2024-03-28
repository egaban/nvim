require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- Navigation
map("n", "-", "<CMD>Oil<CR>")

-- Leap
map({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
map({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")

vim.keymap.del('n', '<tab>')
