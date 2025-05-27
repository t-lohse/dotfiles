#!/bin/sh
pamixer --list-sinks | grep -v fzf | tail -n +2 | sort -u | fzf --layout=reverse --with-nth=3.. | awk '{print $1}' | xargs -r pactl set-default-sink

# yt-dlp -f bestvideo+bestaudio -o - "$YOUTUBE_LINK" | vlc --avcodec-hw=none -
#
# OR
#
# yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 "YOUTUBE_LINK" -o temp_video.mp4
# vlc --avcodec-hw=none temp_video.mp4
# rm temp_video.mp4
#
# OR
#
# just use pipe-viewer (best)
