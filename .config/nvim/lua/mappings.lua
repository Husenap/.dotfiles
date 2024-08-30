require "nvchad.mappings"

local map = vim.keymap.set

map("t", "<ESC>", "<C-\\><C-n>", { noremap = true, silent = true })
