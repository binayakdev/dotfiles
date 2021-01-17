#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# This shows the linux distro logo and the hardware info in the terminal
neofetch

# This shows a random fortune quote using the tux speech bubble
#fortune | cowsay -f tux

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
