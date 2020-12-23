" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 Jul 23

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "spig"

set background=light

hi Normal ctermfg=grey
hi Comment ctermfg=darkmagenta
hi Constant ctermfg=red
hi Identifier ctermfg=yellow
hi Statement ctermfg=darkcyan
hi PreProc ctermfg=darkyellow
hi Type ctermfg=darkgreen
hi Special ctermfg=blue
hi Underlined ctermfg=black ctermbg=grey
hi Error ctermfg=black

" vim: sw=2
