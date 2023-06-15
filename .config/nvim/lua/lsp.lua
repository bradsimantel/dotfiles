local lspconfig = require('lspconfig')

-- Setup language servers.
lspconfig.tsserver.setup {}
lspconfig.solargraph.setup {}

-- Do stuff when LSP server attaches
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)

    -- Format on save
    vim.api.nvim_create_autocmd("BufWritePre", { buffer = ev.buf, callback = function() vim.lsp.buf.format { async = true } end })

    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings - see `:h vim.lsp.*` for docs
    vim.keymap.set('n', '<space>d', vim.lsp.buf.definition, { buffer = ev.buf })
    vim.keymap.set('n', '<space>h', vim.lsp.buf.hover, { buffer = ev.buf })
    vim.keymap.set('n', '<space>r', vim.lsp.buf.references, { buffer = ev.buf })
    -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = ev.buf })
    -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = ev.buf })
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = ev.buf })
    -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, { buffer = ev.buf })
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, { buffer = ev.buf })
    -- vim.keymap.set('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, { buffer = ev.buf })
    -- vim.keymap.set('n', '<space>t', vim.lsp.buf.type_definition, { buffer = ev.buf })
    -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, { buffer = ev.buf })
    -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { buffer = ev.buf })
    -- vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, { buffer = ev.buf })
  end
})
