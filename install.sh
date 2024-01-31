#!/bin/bash
########################################################################################
# ██████╗███╗   ███╗ ██████╗███╗   ██╗      ██████╗  █████╗ 
#██╔════╝████╗ ████║██╔════╝████╗  ██║      ╚════██╗██╔══██╗
#██║     ██╔████╔██║██║     ██╔██╗ ██║█████╗ █████╔╝╚█████╔╝
#██║     ██║╚██╔╝██║██║     ██║╚██╗██║╚════╝ ╚═══██╗██╔══██╗
#╚██████╗██║ ╚═╝ ██║╚██████╗██║ ╚████║      ██████╔╝╚█████╔╝
# ╚═════╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═══╝      ╚═════╝  ╚════╝ 
########################################################################################                                        

# _           _        _ _       _     
# (_)_ __  ___| |_ __ _| | |  ___| |__  
# | | '_ \/ __| __/ _` | | | / __| '_ \ 
# | | | | \__ \ || (_| | | |_\__ \ | | |
# |_|_| |_|___/\__\__,_|_|_(_)___/_| |_|
#                                      

#     ___  __   __ _  ____  __  ___    __    __  __ _  __ _  ____ 
#    / __)/  \ (  ( \(  __)(  )/ __)  (  )  (  )(  ( \(  / )/ ___)
#  _( (__(  O )/    / ) _)  )(( (_ \  / (_/\ )( /    / )  ( \___ \
# (_)\___)\__/ \_)__)(__)  (__)\___/  \____/(__)\_)__)(__\_)(____/
#

ln -s ~/.dotfiles/alacritty ~/.config/alacritty
ln -s ~/.dotfiles/hypr ~/.config/hypr
ln -s ~/.dotfiles/mpv ~/.config/mpv
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/starship ~/.config/starship
ln -s ~/.dotfiles/swaync ~/.config/swaync
ln -s ~/.dotfiles/tmux ~/.config/tmux
ln -s ~/.dotfiles/waybar ~/.config/waybar
ln -s ~/.dotfiles/wofi ~/.config/wofi
ln -s ~/.dotfiles/zsh ~/.config/zsh

ln -s ~/.dotfiles/.icons ~/.icons
ln -s ~/.dotfiles/.themes ~/.themes
ln -s ~/.dotfiles/.tmux ~/.tmux


#  ___  __  ____    ____  ____  ____  _  _  ____ 
# / __)(  )(_  _)  / ___)(  __)(_  _)/ )( \(  _ \
#( (_ \ )(   )(    \___ \ ) _)   )(  ) \/ ( ) __/
# \___/(__) (__)   (____/(____) (__) \____/(__)  
#

GIT_AUTHOR_NAME="Cameron McNiff"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="112502675+CMcN-38@users.noreply.github.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
GH_USER="CMcN-38"
git config --global github.user "$GH_USER"

