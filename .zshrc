# Neofetch for system specifications
# neofetch
#pokemon-colorscripts -r

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

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

platform='unknown'
unamestr=$(uname)
zsh_syntax_highlighting_path=""
zsh_autosuggestions_path=""
package_manager="apt"

# Setting platform specific path and package installer
case "$unamestr" in
    "linux") 
        zsh_syntax_highlighting_path="/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
        zsh_autosuggestions_path="/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ;;
    
    "Darwin") 
        zsh_syntax_highlighting_path="/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
        zsh_autosuggestions_path="/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
        package_manager="brew" ;;
esac

# This enables fish shell like highlighting for zsh
if [ -f "$zsh_syntax_highlighting_path" ]; then
    source "$zsh_syntax_highlighting_path"
else
    eval sudo ${package_manaer} install zsh-syntax-highlighting
    source "$zsh_syntax_highlighting_path"
fi

# Enabling auto completion in zsh based on history
if [ -f "$zsh_autosuggestions_path" ]; then
    source "$zsh_autosuggestions_path" 
else
    eval sudo ${package_manaer} install zsh-autosuggestions
    source "$zsh_autosuggestions_path" 
fi
