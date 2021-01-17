set display+=lastline 
set scrolloff=1 "cursor horizontal and vertical space to edge
set sidescrolloff=5
set wrap "line wrapping
set linebreak "wraps not in middle of words
set ruler "always show cursor position
set wildmenu "command line tab complete as menu
set cursorline 
set relativenumber
set number
set title
set showmatch
set laststatus=2
set backspace=indent,eol,start
set noswapfile
set shiftwidth=3
set softtabstop=3
set expandtab
set incsearch
set hlsearch


"autocmd BufNewFile,BufRead * setlocal formatoptions-=cro "Stop comments automatically continue on new lines

syntax on
filetype indent on


"custom mappings

"puts into t register for temp
nnoremap <C-j> o<Esc>"tcc<Esc>k
nnoremap <C-k> O<Esc>"tcc<Esc>j

"Syntastic
let b:syntastic_mode='active'
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_python_checkers = ['flake8']

nnoremap [l :lprevious<cr>
nnoremap ]l :lnext<cr>
nnoremap <leader>sl :Errors<cr>

"gruvbox colorscheme options
"set termguicolors must be commented out when using gpu accelerated terminal (alacritty)
"set termguicolors
set background=dark
let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_italic=0
colorscheme gruvbox

let g:lightline = {
   \ 'colorscheme': 'gruvbox',
   \ }


" Source vimrcs per filetype
autocmd BufEnter *.py source ~/GithubDrive/vimrc/Python.vim
autocmd BufEnter *.c source ~/GithubDrive/vimrc/C.vim
autocmd BufEnter *.html source ~/GithubDrive/vimrc/Html.vim
autocmd BufEnter *.hs source ~/GithubDrive/vimrc/Haskell.vim
autocmd BufEnter *.java source ~/GithubDrive/vimrc/Java.vim

