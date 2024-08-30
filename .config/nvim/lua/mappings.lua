require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("t", "<ESC>", "<C-\\><C-n>", { noremap = true, silent = true })
