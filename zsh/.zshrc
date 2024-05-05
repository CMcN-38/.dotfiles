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

# History
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# Plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/fast-syntax-highlighting/F-Sy-H.plugin.zsh
source ~/.config/zsh/substring-search/zsh-history-substring-search.plugin.zsh

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[OA' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[OB' history-substring-search-down

# Completion
zstyle :compinstall ~/.config/zsh/.zshrc

autoload -Uz compinit
compinit

# # Case Insensitive Autocomplete
# autoload -U compinit && compinit
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# Load files
source "$ZDOTDIR/zsh-functions"

zsh_add_file "zsh-exports"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-options"
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

eval "$(zoxide init --cmd cd zsh)"
