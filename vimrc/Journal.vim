augroup MyGoyoAutoCmds
	autocmd VimResized * :Goyo 78x100
augroup END

Goyo 78x100
r! python "${PythonScriptsDir}PrintTimeStamp.py"
set formatprg=par
set background=light
colorscheme gruvbox
g:gruvbox_contrast_light=hard

noremap j gj
noremap k gk

set spell spelllang=en_us

set guifont="Liberation Mono 12"

set wrap
set linebreak

exe "normal kkddGo\<CR>"
startinsert
