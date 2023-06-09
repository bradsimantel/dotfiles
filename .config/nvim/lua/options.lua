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

-- Leaderv
vim.g.mapleader = " "
