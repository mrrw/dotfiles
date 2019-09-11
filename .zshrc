# 
# YOU ARE HERE:  ~/.zshrc
# This config file is invoked when user opens zsh.

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marrow/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


#--------------------------------------------#
######  Customizations added by marrow  ######
#--------------------------------------------#

# Additional completion customizations.
zstyle ':completion:*' menu select	# Tab twice to enter menu mode.
setopt COMPLETE_ALIASES
# Uncomment the following line to enable command auto correction
ENABLE_CORRECTION="true"
#  Uncomment the following line to display red dots whilst wiating for completion.
COMPLETION_WAITING_DOTS="true"
#  Uncomment the following line to make completion case-insensitive
CASE_SENSITIVE="false" 

# Extended globbing.
# See https://www.techrepublic.com/article/globbing-wildcard-characters-with-zsh/
setopt EXTENDED_GLOB

# My sources.
source ~/.alias # Get my aliases.
eval "$(dircolors /etc/DIR_COLORS)"
zstyle ':copletion:*' list-colors ${(s.:.)LS_COLORS}
export COLOR_YELLOW='\e[0;35m'

# Transparency for X11.  See compton and transset-df for more details.
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

#### 		PROMPT customizations.  
#### See:  http://nparikh.org/unix/prompt.php 
#
# Uncomment to make zsh look just like default bash prompt:
#PROMPT='[%n@%M %c]$ '


# Blue user, white @, blue host, yellow "~ $"
PROMPT='%U%F{blue}%n%u%F{white}@%F{blue}%M%F{yellow}%~ $ %F{reset}'
RPROMPT='[%F{yellow}%?%f]'
# Autostart tmux (broken)
#exec 'tmux new-session \; split-window -v -p 75 \; split-window -h -p 75 \; split-window -hb -p 66 \; attach \; select-pane'

####	       configure Powerline
#### See: https://www.archlinux.org/index.php/Powerline

#powerline-daemon -q
#. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

#-- cmatrix screensaver maybe?
cmatrix -abs -u5
