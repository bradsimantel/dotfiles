-- Basic settings
vim.o.number = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true 
vim.o.cursorline = true -- Underline
vim.o.scrolloff = 999 -- Vertically center cursor
vim.o.clipboard = "unnamed" -- Share system clipboard
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- Explorer settings 
vim.g.netrw_banner = 0 -- Disable banner
vim.g.netrw_liststyle = 3 -- Tree view

-- Keymaps
vim.keymap.set('n', '<space><space>', vim.cmd.Ex)
vim.keymap.set('n', '<space>f', "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
vim.keymap.set('n', '<space>g', "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true})

-- Dim line numbers, comments, color columns, the status line, splits and sign
-- columns.
vim.cmd("highlight LineNr       ctermfg=8")
vim.cmd("highlight CursorLineNr ctermfg=7")
vim.cmd("highlight Comment      ctermfg=8")
vim.cmd("highlight ColorColumn  ctermfg=7    ctermbg=8")
vim.cmd("highlight Folded       ctermfg=7    ctermbg=8")
vim.cmd("highlight FoldColumn   ctermfg=7    ctermbg=8")
vim.cmd("highlight Pmenu        ctermfg=15   ctermbg=8")
vim.cmd("highlight PmenuSel     ctermfg=8    ctermbg=15")
vim.cmd("highlight SpellCap     ctermfg=7    ctermbg=8")
vim.cmd("highlight StatusLine   ctermfg=15   ctermbg=8    cterm=bold")
vim.cmd("highlight StatusLineNC ctermfg=7    ctermbg=8    cterm=NONE")
vim.cmd("highlight VertSplit    ctermfg=7    ctermbg=8    cterm=NONE")
vim.cmd("highlight SignColumn                ctermbg=8")

-- Plugins
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'airblade/vim-gitgutter'
  use 'ibhagwan/fzf-lua'
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
