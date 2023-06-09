vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim.keymap.set("n", "K", "gk")
vim.keymap.set("i", "<C-c>", "<Esc>")

-- vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
-- vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
-- vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
-- vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "<leader>p", "\"_dP")

vim.keymap.set("v", "<leader>y", "\"+y")

