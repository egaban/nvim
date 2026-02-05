vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>x", "<CMD>bd<CR>", { desc = "Close buffer" })
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Split navigation
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.definition, { desc = "Go to declaration" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
map("n", "gI", vim.lsp.buf.type_definition, { desc = "Go to implementation" })
map("n", "gA", vim.lsp.buf.type_definition, { desc = "All references" })
map("n", "g.", vim.lsp.buf.code_action, { desc = "Code action" })

map("i", "jk", "<ESC>")

map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
