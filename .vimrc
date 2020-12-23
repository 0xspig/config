syntax on
set number relativenumber
set colorcolumn=80
highlight Visual cterm=reverse ctermbg=none
set autoindent


call plug#begin('~/.vim/plugged')
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

if $TERM == "linux" || $TERM == "screen"
	colorscheme spig
endif
