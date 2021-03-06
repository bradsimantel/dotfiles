highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "dim"

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=0    ctermbg=2
highlight DiffChange     ctermfg=0    ctermbg=3
highlight DiffDelete     ctermfg=0    ctermbg=1
highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

" Invert selected lines in visual mode
highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=0    ctermbg=11

" Dim line numbers, comments, color columns, the status line, whitespace,
" splits, and sign columns.
highlight LineNr       ctermfg=8
highlight Comment      ctermfg=8
highlight NonText      ctermfg=8
highlight SpecialKey   ctermfg=8
highlight ColorColumn  ctermfg=7    ctermbg=8
highlight Folded       ctermfg=7    ctermbg=8
highlight FoldColumn   ctermfg=7    ctermbg=8
highlight Pmenu        ctermfg=15   ctermbg=8
highlight PmenuSel     ctermfg=8    ctermbg=15
highlight SpellCap     ctermfg=7    ctermbg=8
highlight StatusLine   ctermfg=15   ctermbg=8    cterm=bold
highlight StatusLineNC ctermfg=7    ctermbg=8    cterm=NONE
highlight VertSplit    ctermfg=7    ctermbg=8    cterm=NONE
highlight SignColumn                ctermbg=8
