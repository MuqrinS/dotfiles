local overrides = require "custom.configs.overrides"
local plugins = {
  {
    "Faisal-Aljutaili/laravelTinker.nvim",
    init = function()
      vim.api.nvim_set_keymap(
        "n",
        "<leader>To",
        ':lua require("laravelTinker").open_tinker()<CR>',
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>Tr",
        ':lua require("laravelTinker").run_laravel_tinker()<CR>',
        { noremap = true, silent = true }
      )
    end,
  },
  {
    "CRAG666/code_runner.nvim",
    config = true
    -- config = function()
    --   require("code_runner").setup {
    --     filetype = {
    --       python = "python3 -u",
    --       sh = "/bin/bash ./",
    --     },
    --   }
    -- end,
  },
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = function()
      require("glow").setup {
        border = "",
        style = "dark",
        width = 120,
      }
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    -- Lazy load when event occurs. Events are triggered
    -- as mentioned in:
    -- https://vi.stackexchange.com/a/4495/20389
    event = "InsertEnter",
    -- You can also have it load at immediately at
    -- startup by commenting above and uncommenting below:
    -- lazy = false
    opts = overrides.copilot,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "lua-language-server",
        "jedi-language-server",
        "intelephense",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "html-lsp",
        "prettier",
        "css-lsp",
        "stylua",
        "sqlls",
        "sql-formatter",
      },
    },
  },
  {
    "ccaglak/larago.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    {
      "nvim-lualine/lualine.nvim",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = true,
    },
  },
  { "f-person/git-blame.nvim", lazy = false },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function()
      require("leap").set_default_keymaps()
    end,
  },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup {
        auto_load = true, -- whether to automatically load preview when
        -- entering another markdown buffer
        close_on_bdelete = true, -- close preview window on buffer delete
        syntax = true, -- enable syntax highlighting, affects performance
        theme = "dark", -- 'dark' or 'light'
        update_on_change = true,
        app = "browser", -- 'webview', 'browser', string or a table of strings
        -- explained below
        filetype = { "markdown" }, -- list of filetypes to recognize as markdown
        -- relevant if update_on_change is true
        throttle_at = 200000, -- start throttling when file exceeds this
        -- amount of bytes in size
        throttle_time = "auto", -- minimum amount of time in milliseconds
        -- that has to pass before starting new render
      }
      -- refer to `configuration to change defaults`
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  {
    "sontungexpt/url-open",
    event = "VeryLazy",
    cmd = "URLOpenUnderCursor",
    config = function()
      local status_ok, url_open = pcall(require, "url-open")
      if not status_ok then
        return
      end
      url_open.setup {}
    end,
    init = function()
      vim.api.nvim_set_keymap("n", "<leader>fu", ":URLOpenUnderCursor<cr>", { noremap = true, silent = true })
    end,
    -- highlight_url = {
    --   all_urls = {
    --     enabled = false,
    --     fg = "#333", -- "text" or "#rrggbb"
    --     -- fg = "text", -- text will set underline same color with text
    --     bg = nil, -- nil or "#rrggbb"
    --     underline = true,
    --   },
    -- },
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-b>",
        ["Find Subword Under"] = "<C-l>",
        ["Select Cursor Down"] = "<M-C-Down>",
        ["Select Cursor Up"] = "<M-C-Up>",
      }
    end,
  },
  {
    "alexghergh/nvim-tmux-navigation",
  },
  {
    "towolf/vim-helm",
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    theme = "hyper",
    init = function()
      vim.g.dashboard_custom_header = {}
    end,
    config = function()
      require("dashboard").setup {
        config = {
          header = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "           ▄ ▄                   ",
            "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
            "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
            "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
            "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
            "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
            "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
            "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
            "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
            "",
          },
          center = {
            { icon = "  ", desc = "Find Files", key = "ff", action = "Telescope find_files" },
            { icon = "  ", desc = "Find String", key = "fs", action = "Telescope live_grep" },
            { icon = "  ", desc = "Recent Files", key = "fo", action = "Telescope oldfiles" },
            -- ''
            -- { icon = "  ", desc = "Find Word", key = "fr", action = "FzfLua oldfiles" },
            { icon = "󰒲  ", desc = "Plugins", key = "<leader>l", action = "Lazy" },
            -- { icon = "⛁  ", desc = "DataBase", key = "db", action = "DBUI" },
            -- { icon = "  ", desc = "tests", key = "to", action = "lua require("neotest").output.open({enter = true})<CR>" },
          },
          footer = {},
          project = { enable = false },
        },
      }
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  { "jwalton512/vim-blade", lazy = false },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup {
        view = {
          centralize_selection = false,
          cursorline = true,
          debounce_delay = 15,
          side = "right",
          relativenumber = true,
          width = 40,
        },
        renderer = {
          add_trailing = false,
          group_empty = false,
          full_name = false,
          root_folder_label = ":~:s?$",
          indent_width = 2,
          special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
          symlink_destination = true,
          highlight_git = "none",
          highlight_diagnostics = "none",
          highlight_opened_files = "none",
          highlight_modified = "none",
          highlight_bookmarks = "none",
          highlight_clipboard = "name",
          indent_markers = {
            enable = false,
            inline_arrows = true,
            icons = {
              corner = "└",
              edge = "│",
              item = "│",
              bottom = "─",
              none = " ",
            },
          },
          icons = {
            web_devicons = {
              file = {
                enable = true,
                color = true,
              },
              folder = {
                enable = false,
                color = true,
              },
            },
            git_placement = "before",
            modified_placement = "after",
            diagnostics_placement = "signcolumn",
            bookmarks_placement = "signcolumn",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
              modified = true,
              diagnostics = true,
              bookmarks = true,
            },
            glyphs = {
              default = "",
              symlink = "",
              bookmark = "󰆤",
              modified = "●",
              folder = {
                arrow_closed = "",
                arrow_open = "",
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
              },
              git = {
                unstaged = "M",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "*",
                deleted = "",
                ignored = "◌",
              },
            },
          },
        },
      }
    end,
  },
  {
    "nvim-neotest/neotest",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "theutz/neotest-pest",
      "olimorris/neotest-phpunit",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-pest",
          require "neotest-phpunit",
        },
      }
    end,
    init = function()
      vim.api.nvim_set_keymap(
        "n",
        "<leader>ts",
        ':lua require("neotest").summary.toggle()<CR>',
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>to",
        ':lua require("neotest").output.open()<CR>',
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tO",
        ':lua require("neotest").output.open({enter = true})<CR>',
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>te",
        ':lua require("neotest").output.enter()<CR>',
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tr",
        ':lua require("neotest").run.run()<CR>',
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tf",
        ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>',
        { noremap = true, silent = true }
      )
    end,
  },
}
return plugins
