#!/bin/bash

# define variable
config_dir="$HOME/.config"
local_dir="$HOME/.local"

local_bak_dir=".local"
config_bak_dir=".config"

# remove old data
rm -rf "$local_bak_dir"
rm -rf "$config_bak_dir"

# make new dir
mkdir $local_bak_dir
mkdir $config_bak_dir

# backup ./local/scripts & .local/services
cp -r "$local_dir/scripts" $local_bak_dir
cp -r "$local_dir/services" $local_bak_dir

# backup .config
cp -r "$config_dir/i3" $config_bak_dir
cp -r "$config_dir/i3blocks" $config_bak_dir \
  && rm -rf "$config_bak_dir/i3blocks/.git"
cp -r "$config_dir/picom" $config_bak_dir
cp -r "$config_dir/jgmenu" $config_bak_dir
cp -r "$config_dir/ranger" $config_bak_dir
cp -r "$config_dir/dunst" $config_bak_dir

# backup profile & shell_rc extension
cp $HOME/.xprofile .
cp $HOME/.profile .
cp $HOME/.common_ext . 
cp $HOME/.tmux.conf* .
cp $HOME/.Xresources .
# backup urxvt extension.
cp -r $HOME/.urxvt .
