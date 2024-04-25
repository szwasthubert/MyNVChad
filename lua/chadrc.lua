-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everforest",
  tabufline = {
    show_numbers = true,
  },
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
  telescope = {
    style = "bordered",
  },
}

return M
