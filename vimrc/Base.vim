"SHOULD NOT SOURCE ANYTHING

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'vim-syntastic/syntastic'
"Plug 'neoclide/coc.nvim'
"Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'jaredgorski/fogbell.vim'
Plug 'matveyt/vim-modest'
Plug 'arzg/vim-plan9'
Plug 'aonemd/kuroi.vim'
Plug 'olivertaylor/vacme'
"Colorschemes
call plug#end()

inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>

nnoremap ; :
let mapleader = ' '

"Split navigation
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
noremap <A-k> <C-w>k
noremap <A-l> <C-w>l

nnoremap <leader>clr :call ClearSearch()<cr>
function! ClearSearch()
   exec "normal :let @/=\"\"\<cr>/\<BS>"
endfunction

set hlsearch
set incsearch
set ignorecase
set smartcase
set noshowmode

"sets default register for y and p to system clipboard
set clipboard=unnamedplus
"comment set clipboard=unnamedplus and uncomment below to make separate vim
"and system clipboards
"nmap <C-v> "+p
"nmap <C-c> "+y
"nmap <C-c><C-c> "+yy

"let b:syntastic_mode='passive'

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
     set t_ut=
endif

"not sure what this is for, delete if not problems
"cnoremap q Q
"command Q call QuitPrompt()
"fun! QuitPrompt()
      "q
      ""let choice = confirm("Close without saving?", "&yes\n&no", 1)
      "if choice == 1 | q! | endif
"endfun
