-- Basic settings
vim.o.number = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true 
vim.o.cursorline = true -- Underline
vim.o.scrolloff = 999 -- Vertically center cursor
vim.o.clipboard = "unnamedplus" -- Share system clipboard
vim.o.path = vim.o.path .. "**" -- Search down into subfolders
vim.o.wildmenu = true -- Display all matching files when we tab complete

-- Explorer settings 
vim.g.netrw_banner = 0 -- Disable banner
vim.g.netrw_liststyle = 3 -- Tree view
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]] -- use .gitignore

-- Keymaps for nav (there are others in lsp.lua)
vim.keymap.set("n", "<space><space>", vim.cmd.Ex)
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true})

