if exists("useOnlyBaseVimrc")
	"For some reason, plugins will only work if sourced from a tree
	"starting in ~/.vimrc . If attempted to be sourced from a tree
	"starting from a --cmd or -c or -S option when running vim from
	"command line, plugins simply will not work. 
	source ~/GithubDrive/vimrc/Base.vim
else
	source ~/GithubDrive/vimrc/Standard.vim
endif
