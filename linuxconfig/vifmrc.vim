set vixcmd="vim"

noremap ; :
cnoremap kj <C-c> 
cnoremap jk <C-c> 
"TO UNDO DEFAULT MAPPINGS, MAP THEM TO something else. unmap won't work!
noremap <Space> <nop>
noremap <Tab> <nop>
nnoremap z za
nnoremap N :! mkdir<space> 
nnoremap n :! vim<space> 
nnoremap w :vs! | if layoutis('split') | view! | endif<cr>
nnoremap r cw
nnoremap R cW
set quickview
set trash
set trashdir=/home/ezra/.config/vifm/trash/
"to make load in one window only

nnoremap q :q<cr>
command! q :execute '!echo %d > ~/.config/vifm/lastdir' | quit

"jump to common directories
nnoremap <Space>h :cd ~<cr>
nnoremap <Space>c :cd ~/GithubDrive/linuxconfig<cr>
nnoremap <Space>vc :cd ~/GithubDrive/vimrc/<cr>
nnoremap <Space>r :cd /<cr>
nnoremap <Space>ush :cd /usr/share/<cr>
nnoremap <Space>dc :cd ~/.config<cr>
nnoremap <Space>j :cd ~/Journal/BackEnd<cr>
nnoremap <Space>sch :cd ~/Documents/School<cr>
nnoremap <Space>wk :cd ~/Documents/CompProg/Leetcode<cr>
"nnoremap <Space>wk :cd ~/Documents/Work/Lyft/FinalRound/<cr>
nnoremap <Space> :cd /run/media/ezra<cr>
"nnoremap <Space> :cd 
"nnoremap <Space> :cd 
"nnoremap <Space> :cd 

colorscheme gruvbox


set relativenumber

