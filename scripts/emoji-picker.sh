#!/usr/bin/env bash

# The famous "get a menu of emojis to copy" script.

# Get user selection via rofi from emoji file.
chosen=$(cat $HOME/.dotfiles/scripts/emoji-list | rofi -dmenu| awk '{print $1}')

# Exit if none chosen.
[ -z "$chosen" ] && exit

# If you run this command with an argument, it will automatically insert the
# character. Otherwise, show a message that the emoji has been copied.
if [ -n "$1" ]; then
	ydotool type "$chosen"
else
  printf "$chosen" | wl-copy
	notify-send "'$chosen' copied to clipboard." &
fi

