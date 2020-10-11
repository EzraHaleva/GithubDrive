nnoremap <leader>p aprintf("");<Esc>hhi
nnoremap <leader>nde yy/main(<CR>kP$r;<C-o>:call ClearSearch()<CR>
nnoremap <leader>de "ryylbyf(/main(<CR>/<C-r>"<CR>Ndd"rP$r;3<C-o>:call ClearSearch()<CR>
nnoremap <leader>run :let @f=@%<CR>:bo term<CR> gcc <C-W>"f -o <C-W>"f<BS><BS><CR>./<C-W>"f<BS><BS><CR>
