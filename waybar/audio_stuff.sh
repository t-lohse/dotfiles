#!/bin/bash
pamixer --list-sinks | grep -v fzf | tail -n +2 | sort -u | fzf --layout=reverse --with-nth=3.. | awk '{print $1}' | xargs -r pactl set-default-sink
