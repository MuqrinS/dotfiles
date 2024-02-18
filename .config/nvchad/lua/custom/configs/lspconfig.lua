local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities
---@diagnostic disable-next-line: different-requires
local lspconfig = require('lspconfig')

lspconfig.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "php" },
  compatibility =  {
    correctForBaseClassStaticUnionTypes =  {
      enabled = false,
    },
  }
}

lspconfig.on_server_ready(function(server)
    local name = server.name
    local opts = {}

    if name == "yamlls" then
      opts.on_attach = function(bufnr)
        if vim.bo[bufnr].buftype ~= "" or vim.bo[bufnr].filetype == "helm" then
          vim.diagnostic.disable()
        end
      end
    end
    server:setup(opts)
  end)
--
-- lspconfig.helm_ls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "helm" },
--   settings = {
--     ['helm-ls'] = {
--       yamlls = {
--         path = "yaml-language-server",
--       }
--     }
--   }
-- }

lspconfig.yamlls.setup {
  filetypes = { "yaml" },
}

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "dockerfile" },
}

lspconfig.docker_compose_language_service.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "docker-compose" },
}

lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    "svelte",
    "astro",
  },
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "scss", "less" },
}

lspconfig.stimulus_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "ruby", "eruby", "blade", "php" },
}

lspconfig.tsserver.setup {}
lspconfig.anakin_language_server.setup {}
lspconfig.jedi_language_server.setup {}
lspconfig.sqlls.setup {}
lspconfig.pyright.setup {}
lspconfig.beautysh.setup {}
-- lspconfig.terraform_ls.setup {}
lspconfig.gopls.setup {}
