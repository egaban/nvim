local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():append()
end)

vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

for i = 0, 9 do
	local mapping = "<leader>" .. i
	vim.keymap.set("n", mapping, function()
		harpoon:list():select(i)
	end)
end
