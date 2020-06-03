"SHOULD NOT SOURCE ANYTHING
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'

"Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'jaredgorski/fogbell.vim'
Plug 'matveyt/vim-modest'
Plug 'arzg/vim-plan9'
Plug 'aonemd/kuroi.vim'
Plug 'olivertaylor/vacme'

"Plug 'MarcWeber/vim-addon-local-vimrc' 

call plug#end()

inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

nnoremap ; :
let mapleader = ' '

nnoremap <leader>clr :call ClearSearch()<cr>
function! ClearSearch()
   exec "normal :let @/=\"\"\<cr>/\<BS>"
endfunction
set noshowmode

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
     set t_ut=
endif
