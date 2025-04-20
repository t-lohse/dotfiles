#! /bin/sh
#waybar
#notify-send "$HOME/.config/waybar/$(more /etc/hostname).conf"
waybar -c "$HOME/.config/waybar/$(more /etc/hostname).conf"
