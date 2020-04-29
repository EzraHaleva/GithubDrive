"SHOULD NOT SOURCE ANYTHING
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
"Plug 'MarcWeber/vim-addon-local-vimrc' 

call plug#end()

inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

nnoremap ; :
let mapleader = ' '

nnoremap <leader>clr :let @/=""<cr>
set noswapfile
set noshowmode

