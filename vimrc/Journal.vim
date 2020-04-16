augroup MyGoyoAutoCmds
	autocmd VimEnter * :r! python ~/Journal/BackEnd/PrintTimeStamp.py
	autocmd VimEnter * :Goyo 100x100
	autocmd VimResized * :Goyo 100x100
augroup END
