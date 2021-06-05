
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias-list #

# sudo alias
alias please='sudo'
alias bitte='sudo'
alias fuck='sudo'
alias sduo='sudo'
alias suod='sudo'
alias sudp='sudo'
alias sud='sudo'

# pacman shortcuts alias
alias update-all='sudo pacman -Syuu'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# linux command alias
alias ls='ls -lha --color=auto'

# Alias-list end # 

# Prompt
PS1='[\u@\h \W]\$ '

# Pywal color scheme #
wal -q -e -n -i /stuff/images/wallpapers/lain_cross.jpeg

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# fetch #
pfetch
