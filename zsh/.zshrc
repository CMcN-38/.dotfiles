########################################################################################
# ██████╗███╗   ███╗ ██████╗███╗   ██╗      ██████╗  █████╗ 
#██╔════╝████╗ ████║██╔════╝████╗  ██║      ╚════██╗██╔══██╗
#██║     ██╔████╔██║██║     ██╔██╗ ██║█████╗ █████╔╝╚█████╔╝
#██║     ██║╚██╔╝██║██║     ██║╚██╗██║╚════╝ ╚═══██╗██╔══██╗
#╚██████╗██║ ╚═╝ ██║╚██████╗██║ ╚████║      ██████╔╝╚█████╔╝
# ╚═════╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═══╝      ╚═════╝  ╚════╝ 
########################################################################################                                        

# ____  ____  _    
#/_   \/ ___\/ \ /|
# /   /|    \| |_||
#/   /_\___ || | ||
#\____/\____/\_/ \|
#                  

# Change ZDOTDIR
ZDOTDIR=~/.config/zsh

# Case Insensitive Autocomplete
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Load files
source "$ZDOTDIR/zsh-functions"

zsh_add_file "zsh-exports"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-aliases"
# zsh_add_file "zsh-prompt"

eval "$(starship init zsh)"



if [ $(uname -m) = "aarch64" ]; then

else
  # Add Brew to Shell
  if [[ $OSTYPE == "linux"* ]]; then
    # eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" #ubuntu
  fi

  if [[ $OSTYPE == "darwin"* ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)" #mac
  fi
fi
