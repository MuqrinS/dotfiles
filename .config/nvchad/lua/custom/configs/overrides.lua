local M = {}

M.copilot = {
  -- Possible configurable fields can be found on:
  -- https://github.com/zbirenbaum/copilot.lua#setup-and-configuration
  suggestion = {
    enabled = true,
    keymap = {
      accept = "<C-y>",
    },
    auto_trigger = true,
  },
}

return M
