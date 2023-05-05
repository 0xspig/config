syntax on
set number relativenumber
set colorcolumn=80
highlight Visual cterm=reverse ctermbg=none
set autoindent


call plug#begin('~/.vim/plugged')
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'lervag/vimtex'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'robertbasic/vim-hugo-helper'

Plug 'preservim/vim-pencil'

call plug#end()

if $TERM == "linux" || $TERM == "screen"
	colorscheme spig
endif

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

syntax enable
let g:vimtex_view_method = 'zathura'

set nocompatible
filetype plugin on       " may already be in your .vimrc

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init('wrap':'soft')
  autocmd FileType text         call pencil#init('wrap':'soft')
augroup END
