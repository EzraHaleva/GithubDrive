"SHOULD NOT SOURCE ANYTHING
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'vim-syntastic/syntastic'

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
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>

"cnoremap q Q
command Q call QuitPrompt()
fun! QuitPrompt()
      q
      let choice = confirm("Close without saving?", "&yes\n&no", 1)
      if choice == 1 | q! | endif
endfun

nnoremap ; :
let mapleader = ' '

set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <leader>clr :call ClearSearch()<cr>
function! ClearSearch()
   exec "normal :let @/=\"\"\<cr>/\<BS>"
endfunction
set noshowmode

let b:syntastic_mode='passive'

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
     set t_ut=
endif

"So clipboard between vim instances works with +y/+p
set clipboard=unnamed
