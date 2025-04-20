#!/bin/bash
link() {
    source=$1      # e.g. $DOTFILES/zsh/rc
    target_file=$2 # e.g. ~/.zshrc

    # Avoid linking to self
    if [ "$source" = "$target_file" ]; then
        echo "Skipping self-link: $linkpath"
        return
    fi

    # If the link already exists and is correct, skip it
    if [ -L "$target_file" ] && [ "$(readlink $target_file)" = "$source" ]; then
        echo "Link to $target_file already exists and is correct"
        return
    fi

    # If file or link exists but is wrong, remove it
    if [ -e "$target_file" ] || [ -L "$source" ]; then
        rm -rf "$target_file"
    fi

    ln -s "$source" "$target_file"
    echo "Linked: $target_file -> $source"
}

DOTFILES=$(dirname "$(realpath "$0")")
HOSTNAME=$(more "/etc/hostname")
echo "dotfiles: $DOTFILES"
mkdir -p $HOME/.config

#cd $HOME/.config || exit 1

# Default configs
link $DOTFILES/sway $HOME/.config/sway
link $DOTFILES/waybar $HOME/.config/waybar
link $DOTFILES/swaylock $HOME/.config/swaylock
link $DOTFILES/mako $HOME/.config/mako
mkdir -p $HOME/.config/foot
#echo "$DOTFILES/foot/$HOSTNAME.ini $HOME/.config/foot/foot.ini"
link $DOTFILES/foot/$HOSTNAME.ini $HOME/.config/foot/foot.ini
#link $DOTFILES/foot $HOME/.config/foot
link $DOTFILES/nvim $HOME/.config/nvim
link $DOTFILES/neomutt $HOME/.config/neomutt

# zsh
#cd $HOME || exit 1
link $DOTFILES/zsh/rc $HOME/.zshrc
link $DOTFILES/zsh/env $HOME/.zshenv

# binary
mkdir $HOME/.local/bin 2>/dev/null
#cd $HOME/.local/bin || exit 1

#link $DOTFILES/sway/bar_start.sh $HOME/.local/bin/waybar_start
#link $DOTFILES/sway/sway_tile.sh $HOME/.local/bin/sway_tile

while read p; do
    file_and_name=($p)
    if [ "${#file_and_name[@]}" != "2" ]; then
        echo "Wrong formatted config file. Every line must be formatted as {SCRIPT} {NAME}"
        exit 1
    fi
    file="${file_and_name[0]}"
    name="${file_and_name[1]}"
    link $DOTFILES/helperscripts/$file $HOME/.local/bin/$name
    chmod +x $HOME/.local/bin/$name

done <$DOTFILES/helperscripts/$HOSTNAME.use
