#!/bin/sh
pamixer --list-sinks | grep -v fzf | sort -u | fzf --layout=reverse | awk '{print $1}' | xargs -r pactl set-default-sink
