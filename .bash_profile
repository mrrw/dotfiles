# 
# ~/.bash_profile
# 
# From bash(1) INVOCATION:  When bash is invoked as an interactive login shell, or as a non-interactive
# shell with the --login option, it first reads and executes commands from the file /etc/profile, if
# that file exists.  After reading that file, it looks for ~.bash_profile, ~/.bash_login, and 
# ~/.profile, in that order, and reads and executes commands from the first one that exists and is 
# readable.  The --noprofile option may be used when the shell is started to inhibit this behavior.


[[ -f ~/.bashrc ]] && . ~/.bashrc
#  Tryna fix startx after updating Arch on 06/11/19.
#  Testing this possible fix.
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
