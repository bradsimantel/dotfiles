-- In diffs, added lines are green, changed lines are yellow, deleted lines are
-- red, and changed text (within a changed line) is bright yellow and bold.
vim.cmd("highlight DiffAdd        ctermfg=0    ctermbg=2")
vim.cmd("highlight DiffChange     ctermfg=0    ctermbg=3")
vim.cmd("highlight DiffDelete     ctermfg=0    ctermbg=1")
vim.cmd("highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold")

-- Invert selected lines in visual mode
vim.cmd("highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse")

-- Highlight search matches in black, with a yellow background
vim.cmd("highlight Search         ctermfg=0    ctermbg=11")

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
