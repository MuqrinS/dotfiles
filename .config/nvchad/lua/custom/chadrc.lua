---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvchad",
  transparency = true,
  -- nvdash = {
  --   load_on_startup = true,
  --   buttons = {
  --     { " Find File", "ff", "Telescope find_files" },
  --     { " Find String", "fs", "Telescope live_grep" },
  --     { " Recent Files", "fr", "Telescope oldfiles" },
  --     { " Themes", "Th", "Telescope themes" },
  --     { "  Mappings", "Spc c h", "NvCheatsheet" },
  --     -- { icon = "⛁  ", desc = "DataBase", key = "db", action = "DBUI" },
  --     -- { icon = "  ", desc = "tests", key = "to", action = "lua require("neotest").output.open({enter = true})<CR>" },
  --   },
  -- },
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
M.telescope = "custom.telescope"

return M
