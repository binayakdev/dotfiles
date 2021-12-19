# Neofetch for system specifications
# neofetch
#pokemon-colorscripts -r

# Path to your oh-my-zsh installation.
export ZSH="/home/binayak/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# My aliases
alias ls='exa --header --icons'
alias rm='rm -vI'
alias v='nvim'
alias bc='batcat'
alias pp='cd ~/Projects/Personal'
alias gt='cd ~/Entertainment/"TV Shows"'
alias gm='cd ~/Entertainment/Movies'
alias gw='cd ~/Entertainment/Wallpapers'
alias gd='cd ~/Documents'
alias pm='cd ~/Projects/Personal/Misc'
alias open='xdg-open'
alias config='cd ~/.config'
alias starship_update='sh -c "$(curl -fsSL https://starship.rs/install.sh)"'
alias starship_install='sh -c "$(curl -fsSL https://starship.rs/install.sh)"'


# The Starship promp
eval "$(starship init zsh)"

# This enables fish shell like highlighting for zsh
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    sudo apt install zsh-syntax-highlighting
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Enabling auto completion in zsh based on history
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
    sudo apt install zsh-autosuggestions
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Created by `pipx` on 2021-09-25 04:12:17
export PATH="$PATH:/home/binayak/.local/bin"
