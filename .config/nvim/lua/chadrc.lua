-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
}

M.term = {
  winopts = { number = false, relativenumber = false },
  sizes = { sp = 0.3, vsp = 0.4, ["bo sp"] = 0.3, ["bo vsp"] = 0.4 },
  float = {
    relative = "editor",
    row = 0.02,
    col = 0.05,
    width = 0.9,
    height = 0.9,
    border = "double",
  },
}

return M
