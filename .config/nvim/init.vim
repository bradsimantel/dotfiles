" Turn on syntax highlighting
syntax on

" Color scheme
colorscheme dim

" Flags
set number
set nowrap
set ignorecase smartcase
set cursorline
set smartindent expandtab shiftwidth=2 tabstop=2 softtabstop=2
set backspace=indent,eol,start
set noswapfile nobackup
set colorcolumn=81
set incsearch hlsearch
set belloff=all
set undofile undodir=~/.config/nvim/undodir
set scrolloff=999
set clipboard=unnamed

" Show file tree
let g:netrw_liststyle = 3

" Configure Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Configure ALE for linting/fixing
let g:ale_fixers = ['prettier', 'gofmt']
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'github/copilot.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
call plug#end()
