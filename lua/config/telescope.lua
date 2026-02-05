local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols, { desc = "Document symbols" })
