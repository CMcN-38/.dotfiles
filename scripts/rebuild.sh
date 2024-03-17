#!/usr/bin/env bash
set -e
pushd /home/cameron/.nixos/
nvim 
alejandra . &>/dev/null
git diff -U0 *.nix
echo "NixOS Rebuilding..."
# The following line is the rebuild command, this would need altering along with new hosts
sudo nixos-rebuild switch --flake /home/cameron/.nixos/#targaryen &> nixos-switch.log || (
	sudo cat nixos-switch.log | grep --color error && false)
#gen=$(nixos-rebuild list-generations | grep current)
git commit -am "$(date)"
popd
notify-send -e "NixOS Rebuilt OK!" --icon=software-update-available

