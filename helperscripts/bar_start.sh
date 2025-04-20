#! /bin/sh
#waybar
#notify-send "$HOME/.config/waybar/$(more /etc/hostname).conf"
HOSTNAME=$(more /etc/hostname)
waybar -c "$HOME/.config/waybar/$HOSTNAME.conf" -s "$HOME/.config/waybar/$HOSTNAME.css"
