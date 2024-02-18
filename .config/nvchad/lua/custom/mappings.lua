local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<C-a>"] = "",
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = ""
  },
}

M.python = {
  plugin = true,
  n = {
    [";y"] = { "<cmd>! python3 % <CR>", "Excuting current python file" },
  },
}

M.telescope = {
  plugin = true,
  n = {
    -- find
    [";f"] = { "<cmd> Telescope find_files hidden=true <CR>", "Find files" },
    [";a"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
    [";g"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    -- git
    [";c"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    [";s"] = { "<cmd> Telescope git_status <CR>", "Git status" },
    [";h"] = { "<cmd> Telescope help_tags <CR>", "Help page" },
    [";b"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },

    -- pick a hidden term
    ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "Pick hidden term" },
  },
}

M.nvim_tmux = {
  plugin = true,
  n = {
    -- find
    ["<C-h>"] = { "<cmd>NvimTmuxNavigateLeft<CR>", "Navigate Left" },
    ["<C-l>"] = { "<Cmd>NvimTmuxNavigateRight<CR>", "Navigate Right" },
    ["<C-j>"] = { "<Cmd>NvimTmuxNavigateDown<CR>", "Navigate Down" },
    ["<C-k>"] = { "<Cmd>NvimTmuxNavigateUp<CR>", "Navigate Up" },
  },
}

M.tinker = {
  plugin = true,
  n = {
    [";t"] = { '<cmd> lua require("laravelTinker").open_tinker()<CR>', "Open Tinker" },
    [";r"] = { '<cmd> lua require("laravelTinker").run_laravel_tinker()<CR>', "Run Tinker" },
  },
}

M.neo_test = {
  plugin = true,
  n = {
    ["<leader>ts"] = { '<cmd> lua require("neotest").summary.toggle()<CR>', "Toggle Summary" },
    ["<leader>to"] = { '<cmd> lua require("neotest").output.open()<CR>', "Output" },
    ["<leader>tO"] = { '<cmd> lua require("neotest").output.open({enter = true})<CR>', "Output v2" },
    ["<leader>te"] = { '<cmd> lua require("neotest").output.enter()<CR>', "Enter Tests" },
    ["<leader>tr"] = { '<cmd> lua require("neotest").run.run()<CR>', "Run" },
    ["<leader>tf"] = { '<cmd> lua require("neotest").run.run(vim.fn.expand("%"))<CR>', "Run Expanded" },
  },
}

M.url = {
  plugin = true,
  n = {
    ["<leader>fu"] = { '<Cmd>URLOpenUnderCursor<CR>', "Open Url Under Cursor" },
  },
}

M.markdown = {
  plugin = true,
  n = {
    ["<leader>gg"] = { '<Cmd>Glow', "Markdown Preview in a popup" },
  },
}

M.theme = {
  plugin = true,
  ["<leader>th"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },
  ["<leader>ma"] = { "<cmd> Telescope marks <CR>", "telescope bookmarks" },
}

return M
