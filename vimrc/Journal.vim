augroup MyGoyoAutoCmds
	autocmd VimResized * :Goyo 78x100
        autocmd VimEnter * :Goyo 78x100
        autocmd TextChanged,TextChangedI <buffer> silent write
augroup END

set formatprg=par
set background=light
"colorscheme gruvbox
"colorscheme fogbell_light
colorscheme vacme
"colorscheme plan9
"colorscheme kuroi "highlighting issue
"colorscheme 
"colorscheme 

noremap j gj
noremap k gk

set spell spelllang=en_us

set guifont="Liberation Mono 12"

set wrap
set linebreak

Goyo 78x100
