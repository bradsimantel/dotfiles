-- Basic settings
vim.o.number = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true 
vim.o.cursorline = true -- Underline
vim.o.scrolloff = 999 -- Vertically center cursor
vim.o.clipboard = "unnamedplus" -- Share system clipboard
vim.o.path = vim.o.path .. "**" -- Search down into subfolders
vim.o.wildignore = vim.o.wildignore .. "*/node_modules/*,*/tmp/*" -- Ignore node_modules
vim.o.wildmenu = true -- Display all matching files when we tab complete
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- Explorer settings 
vim.g.netrw_banner = 0 -- Disable banner
vim.g.netrw_liststyle = 3 -- Tree view
vim.g.netrw_altv = 1 -- Open to the right
vim.g.netrw_winsize = 75 -- Open file with 75% width
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]() -- use .gitignore

-- Keymaps for nav (there are others in lsp.lua)
vim.keymap.set("n", "<space><space>", vim.cmd.Ex)
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true})

-- Non-LSP linters
require('lint').linters_by_ft = {
  eruby = { 'erb_lint' }
}

-- Non-LSP formatters
require("formatter").setup {
  filetype = {
    eruby = { function() return { exe = "htmlbeautifier", stdin = true } end }
  }
}

-- Open quickfix when using :vim etc.
vim.api.nvim_create_autocmd('QuickFixCmdPost', { pattern = '[^l]*', command = 'cwindow' })

-- Automatically run :FormatWrite whenever you save a file
vim.api.nvim_create_autocmd("BufWritePost", { pattern = "*", command = "FormatWrite" })

-- Automatically run non-LSP linters when you save a file
vim.api.nvim_create_autocmd("BufWritePost", { callback = function() require('lint').try_lint() end })

