-- Basic settings
vim.o.number = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true 
vim.o.cursorline = true -- Underline
vim.o.scrolloff = 999 -- Vertically center cursor
vim.o.clipboard = "unnamedplus" -- Share system clipboard
vim.o.path = vim.o.path .. "**" -- Search down into subfolders
vim.o.wildignore = vim.o.wildignore .. "*/node_modules/*" -- Ignore node_modules
vim.o.wildmenu = true -- Display all matching files when we tab complete
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- Explorer settings 
vim.g.netrw_banner = 0 -- Disable banner
vim.g.netrw_liststyle = 3 -- Tree view
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]() -- use .gitignore

-- Keymaps for nav (there are others in lsp.lua)
vim.keymap.set("n", "<space><space>", vim.cmd.Ex)
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true})

-- Open quickfix when using :vim etc.
vim.api.nvim_create_autocmd('QuickFixCmdPost', { pattern = '[^l]*', command = 'cwindow' })

