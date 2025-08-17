local on_attach = function(_, bufnr)
  local bufmap = function(keys, func)
    vim.keymap.set('n', keys, func, { buffer = bufnr })
  end

  bufmap('<leader>r', vim.lsp.buf.rename)
  bufmap('<leader>a', vim.lsp.buf.code_action)

  bufmap('gd', vim.lsp.buf.definition)
  bufmap('gD', vim.lsp.buf.declaration)
  bufmap('gI', vim.lsp.buf.implementation)
  bufmap('<leader>D', vim.lsp.buf.type_definition)

  bufmap('gr', require('telescope.builtin').lsp_references)
  bufmap('<leader>s', require('telescope.builtin').lsp_document_symbols)
  bufmap('<leader>S', require('telescope.builtin').lsp_dynamic_workspace_symbols)

  bufmap('K', vim.lsp.buf.hover)

  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, {})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Example: a server you want outside of mason
require('lspconfig').gdscript.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "jdtls", "pyright", "clangd",  }, -- add more servers you want auto-installed
}

-- Configure installed servers manually
local lspconfig = require("lspconfig")

-- Default handler for all servers
for _, server in ipairs(require("mason-lspconfig").get_installed_servers()) do
  if server ~= "lua_ls" then -- we’ll handle lua_ls separately
    lspconfig[server].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

-- Lua LS with neodev
require("neodev").setup()
lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}
