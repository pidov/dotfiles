#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Variables
export PATH=$PATH:/Users/ipidov/bin
export NVM_DIR="$HOME/.nvm"

BLUE='\[\033[38;5;109m\]'
YELLOW='\[\033[38;5;214m\]'
GREEN='\[\033[38;5;142m\]'
RESET='\[$(tput sgr0)\]'
export PS1="${GREEN}\u${RESET}@${YELLOW}\h${RESET} ${BLUE}\w${RESET}\n → ${RESET}"

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
