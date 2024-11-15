require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "solargraph", "ts_ls" }
})

local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}

-- Ruby

-- local lsp = require 'nvim_lsp'
-- lsp.solargraph.setup{
--   settings = {
--     solargraph = {
--       diagnostics = true
--     }
--   }
-- }

require("lspconfig").solargraph.setup({
   settings = {
     solargraph = {
       diagnostics = true
     }
   }
})
-- require("lspconfig").sorbet.setup({})
-- require("lspconfig").standardrb.setup({})
-- require("lspconfig").rubocop.setup({})
require("lspconfig").ruby_lsp.setup({})
-- require("lspconfig").erb_lint.setup({})
-- require("lspconfig").rubyfmt.setup({})
-- require("lspconfig").rufo.setup({})
-- require("lspconfig").trivy.setup({})

require("lspconfig").ts_ls.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").phpactor.setup({})
require("lspconfig").helm_ls.setup({})
require("lspconfig").pyright.setup({})
require("lspconfig").java_language_server.setup({})
require("lspconfig").kotlin_language_server.setup({})

require('lspconfig')['hls'].setup{
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
