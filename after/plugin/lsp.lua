local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
'tsserver',
'elixirls',
'eslint',
'rust_analyzer',
'yamlls',
'pyright',
'julials',
'clojure_lsp',
'html',
'vimls',
'jsonls'
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
