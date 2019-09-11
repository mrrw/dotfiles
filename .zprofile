# 
# YOU ARE HERE:  ~/.zprofile
#   This file is invoked when zsh is started by user.
#

#  run startx upon login
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#  run tmux upon startup
#exec 'tmux -2 new-session \; split-window -v -p 85 \; split-window -h -p 72 \; split-window -hb -p 61\; attach' 
