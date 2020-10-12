

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


syntax on
filetype indent on

"custom mappings
noremap <Down> <nop>
noremap <Up> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Down> <nop>
inoremap <Up> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
nnoremap <C-j> o<Esc>k
nnoremap <C-k> O<Esc>j
nnoremap <leader>b a{<cr>}<Esc>O

"Syntastic
let b:syntastic_mode='active'
nnoremap <leader>sn :lnext<cr>
nnoremap <leader>sb :lprevious<cr>
nnoremap <leader>sl :Errors<cr>

"Nerd Tree Settings
"map <C-n> :NERDTreeToggle<CR>

"gruvbox colorscheme options
set termguicolors
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic=0
colorscheme gruvbox

let g:lightline = {
   \ 'colorscheme': 'gruvbox',
   \ }

"Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_wq = 0

"Template Settings
"let g:tmpl_search_paths = [vimrcRepoPath.'\templates']
" Helper Functions

" Source vimrcs per filetype
autocmd BufEnter *.py source ~/GithubDrive/vimrc/Python.vim
autocmd BufEnter *.c source ~/GithubDrive/vimrc/C.vim
autocmd BufEnter *.html source ~/GithubDrive/vimrc/Html.vim
autocmd BufEnter *.hs source ~/GithubDrive/vimrc/Haskell.vim

" 
