#!/usr/bin/env/bash
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

mkdir ~/.config

ln -s ~/.dotfiles/alacritty ~/.config/alacritty
ln -s ~/.dotfiles/btop ~/.config/btop
ln -s ~/.dotfiles/flameshot ~/.config/flameshot
ln -s ~/.dotfiles/hypr ~/.config/hypr
ln -s ~/.dotfiles/lazygit ~/.config/lazygit
ln -s ~/.dotfiles/mpv ~/.config/mpv
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/rofi ~/.config/rofi
ln -s ~/.dotfiles/starship ~/.config/starship
ln -s ~/.dotfiles/swappy ~/.config/swappy
ln -s ~/.dotfiles/swaync ~/.config/swaync
ln -s ~/.dotfiles/tmux ~/.config/tmux
ln -s ~/.dotfiles/waybar ~/.config/waybar
ln -s ~/.dotfiles/wofi ~/.config/wofi
ln -s ~/.dotfiles/zsh ~/.config/zsh

ln -s ~/.dotfiles/.icons ~/.icons
ln -s ~/.dotfiles/.themes ~/.themes
ln -s ~/.dotfiles/.tmux ~/.tmux

sudo ln -s ~/.dotfiles/scripts/random_wallpaper /usr/local/bin/random_wallpaper
sudo ln -s ~/.dotfiles/scripts/tmux-sessioniser /usr/local/bin/tmux-sessioniser
sudo ln -s ~/.dotfiles/scripts/tmux-cht.sh /usr/local/bin/tmux-cht.sh
sudo ln -s ~/.dotfiles/scripts/rebuild.sh /usr/local/bin/rebuild
sudo ln -s ~/.dotfiles/scripts/screenshot.sh /usr/local/bin/screenshot
sudo ln -s ~/.dotfiles/scripts/emoji-picker.sh /usr/local/bin/emoji-picker

sudo ln -s ~/.config/zsh/.zshrc ~/.zshrc
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

