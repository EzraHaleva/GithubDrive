i3-msg 'split h'
export StartTermWithVifm="true" 
i3-sensible-terminal
export StartTermWithVifm="false"
i3-sensible-terminal -e cmatrix
i3-msg 'split v'
i3-sensible-terminal -e "rsclock -f 88 -S -c"
