#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Variables
export PATH=$PATH:/Users/ipidov/bin
export NVM_DIR="$HOME/.nvm"

function nonzero_return() {
	RETVAL=$?
	[ $RETVAL -ne 0 ] && echo " You fucked up $RETVAL"
}

PS1='\u@\H \W \$\[\e[31m\]$(nonzero_return)\[\e[m\] '

# Aliases
alias ls='ls --color=auto'
alias cal='cal --monday'

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Keyboard mappings
setxkbmap -option caps:swapescape
setxkbmap -option 'grp:alt_shift_toggle' -layout us,bg -variant ,phonetic

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
fi
