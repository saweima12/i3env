#!/bin/bash

# install dependency
sudo pacman -S \
  rapidjson make gcc xtitle \
  yad feh autotiling maim \
  pamixer yay dmenu jgmenu bmenu \
  kitty


# clone project && build i3-winmoition
git clone https://github.com/iiKoe/i3-winmotion.git 
cd ./i3-winmotion && make
sudo cp ./bin/i3-winmotion /usr/local/bin

# install autorandr
sudo pip3 install autorandr

# install nerd-fonts
sudo yay -S nerd-fonts-fira-code 
